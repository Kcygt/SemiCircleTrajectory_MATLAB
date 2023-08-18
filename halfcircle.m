% Initial parameters
radius = 0.08;
line_length = 0.1;

alpha = (2*line_length)/(radius*pi) + 1;

% Time vector
sspace = linspace(0, alpha + 1, 1000);
P = zeros(1000,3);
P_z = zeros(1,length(sspace));
P_x = zeros(1,length(sspace));
P_z_derivative = zeros(1,length(sspace));
P_x_derivative = zeros(1,length(sspace));

[Rx,Ry,Rz] = rotation(pi/3);


for i=1:length(sspace)
    s=sspace(i);

    if s <= 1
        % Calculate x and y coordinates of the first circle segment
        P_z(i) = -radius * cos(s*pi/2);
        P_x(i) = -radius * sin(s*pi/2);
        P_z_derivative(i) = radius * (pi/2) * sin(s * pi/2);
        P_x_derivative(i) = -radius * (pi/2) * cos(s * pi/2);


        P(i,:) =  Ry * [P_x(i) 0.0 P_z(i) ]' ;
    elseif s <= alpha && s>1
        % Calculate the coordinates of the straight line segment
        P_z(i) = (s-1) * (radius * pi) / 2;
        P_x(i) = -radius * ones(1);

        P_z_derivative(1,i) = radius * pi / 2;
        P_x_derivative(1,i) = 0;
        P(i,:) =  Ry * [P_x(i) 0.0 P_z(i) ]' ;
    else
        P_z(i) = radius * sin((s-alpha) * pi/2) + line_length;
        P_x(i) = -radius * cos((s-alpha) * pi/2);
        P_z_derivative(i) = radius * pi/2 * cos((s-alpha) * pi/2);
        P_x_derivative(i) = radius * pi/2 * sin((s-alpha) * pi/2);
        P(i,:) =  Ry * [P_x(i) 0.0 P_z(i) ]' ;
    end

end

tBlend = 2;
tFinal = 4;
s = zeros(1000,1);
sDot = zeros(1000,1);

radius = 0.08;
line_length = 0.1;


alpha = (2 * line_length) / (radius * pi) + 1;
W = (alpha + 1) / (tBlend * (tFinal - tBlend));
for i = 1:length(sDot)
    t = i * tFinal / length(sDot);
    if  t <= tBlend
        s(i) = (W * t^2) / 2;
        sDot(i) = W * t;


    elseif t > tBlend && t < tFinal - tBlend
        s(i) = W * tBlend * (t - tBlend) + ((W * tBlend^2))/2;
        sDot(i) = W * tBlend;
        %         s(i) = W * tBlend * (t - tBlend );


    else
        s(i) =  W * tBlend^2 - W * (t - tFinal)^2 / 2 - W * tBlend * (2*tBlend-tFinal);
        sDot(i) = W * ( tFinal - t);
    end

end



figure(1)
hold on
grid on
plot(P(:,3),P(:,1), 'LineWidth', 2.0)
xlabel('Z direction (m)')
ylabel('X direction (m)')
title('Path')
%
% writematrix(P_z', "P_x.txt");
% writematrix(P_x', "P_y.txt");
% writematrix(P_z_derivative', "P_x_derivative.txt");
% writematrix(P_y_derivative', "P_y_derivative.txt");
%
% figure(1)
% hold on
% grid on
% plot(sspace,P_z, 'LineWidth', 2.0)
%
%
%
% figure(1)
% plot(P_x, 'LineWidth', 2.0)
% title('Position')
% xlabel('S')
% ylabel('Position (cm)')
% legend('X direction','Z direction')
%
%
% figure(2)
% hold on
% grid on
% plot(P_z,P_x, 'LineWidth', 2.0)
% xlabel('X direction (cm)')
% ylabel('Z direction (cm)')
% title('Path')
%
% figure(3)
% hold on
% grid on
% plot(P_x_derivative,P_z_derivative)
%

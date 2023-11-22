s = 0.0;
sDot = 0.0;
tBlend = 1.0 ;
tFinal = 4.0;

radius = 0.05;
line_length = 0.20;
alpha = (2 * line_length) / (radius * 3.1415) + 1;
W =  (alpha + 1) / (tBlend * (tFinal - tBlend));



t = data1.FC50.T4.Time;
N = length(t);
j= 1;
P_z = zeros(N,1);
P_x = zeros(N,1);
P_z_derivative = zeros(N,1);
P_x_derivative = zeros(N,1);

for i=1:N
    [s, sDot] = sFun(W,tBlend,t(j),tFinal);
    [P_z(j), P_x(j), P_z_derivative(j), P_x_derivative(j)] = hypodrome(s,radius,line_length);
    j = j + 1; 
end


%Input Generation
Ts = 0.001;
t = 0:Ts:0.6;
u = zeros(size(t));
u(t < 0.3) = 0;
u((t >= 0.3) & (t < 0.4)) = linspace(0, 0.001, sum((t >= 0.3) & (t < 0.4)));
u(t >= 0.4) = 0.001;

% Desing Controller

% Define the numerator and denominator of the systems
plant_num = [8.331499999999999e-04 -0.002411635990000 0.001646764298800 0.001386774757085 -0.002226794738657 7.735179924151595e-04 ];
plant_den =  [1 -5.7154 13.723534400000000 -17.734220581599999 13.016931722320001  -5.148338416112000 0.857492875392000];

feedback_num = [12.33590000000000 -35.651984590000005 34.340092218032005  -11.023646014692989];
feedback_den = [1    -2.832900000000000    2.672854940000000    -0.839948725176000];

filter_num = [0.1568 0.126898240000000];
filter_den = [1 -1.25 0.5335];

% Calculate the transfer functions
plant_tf = tf(plant_num,plant_den,Ts);
feedback_tf = tf(feedback_num,feedback_den,Ts);
filter_tf = tf(filter_num,filter_den,Ts);
feedforward_tf = filter_tf / plant_tf;


feedback_tf.InputName = "e";
feedback_tf.OutputName = "uc";

% feedforward_tf.InputName = "r";
% feedforward_tf.OutputName = "uf";

plant_tf.InputName = "u";
plant_tf.OutputName ="y";

filter_tf.InputName = "v";
filter_tf.OutputName = "w";

L = 0.95;
Q = 1;

S1 = sumblk("e = r - y");
% S2 = sumblk("u = uf + uc");
S2 = sumblk("w = uc + Q * ((e * L) + u)");
% S3 = sumblk("w = Q * ((e * L) + u)");

% hold on;
% feedback_result = feedback(plant_tf * feedback_tf,1);
% lsim(feedback_result,u,t)
% 
% feedforward_result =  connect(plant_tf,feedback_tf,feedforward_tf,S1,S2,"r","y");
% lsim(feedforward_result,u,t)

ILC_result =  connect(plant_tf,feedback_tf,S1,S2,"r","y");
lsim(ILC_result,u,t)











% %%
% sysd = plant_tf;
% % sysd = c2d(sysc,Ts,'ZOH');
%
% % Get state space values for ILC
% [Ad, Bd, Cd, Dd] = ssdata(sysd);
%
% % Initial condition x0, time range t - assume 1 second, pure time delay n0, relative
% % degree r, and matrix size N
% x0 = 0;
% t = 0:Ts:1;
% n0 = 0;
% r = 1;
% N = length(t);
%
% % Define input vector U and reference J - Refernce = input for this example
% Rj = [2*ones(1,200) 1*ones(1,200) 5*ones(1,200) 3*ones(1,200) 0*ones(1,201)]';
% U = Rj;
%
% % G0 not formulated as initial condition is 0
%
% % Formulate G
% Gvec = zeros(N,1);
% rVec = ((r-1):(N-n0-1))';
%
% for ii = 1:length(rVec)
%     ApowVec = Ad^rVec(ii);
%     Gvec(ii) = Cd*ApowVec*Bd;
% end
%
% G = tril(toeplitz(Gvec));
%
% % Set up ILC
% jmax = 10;
%
% l0 = 0.95; L = l0 * eye(N,N);
% q0 = 1.00; Q = q0 * eye(N,N);
%
% Uj = zeros(N,1); Ujold = Uj;
% Ej = zeros(N,1); Ejold = Ej;
%
% % Run ILC and plot the response for each iteration
% for ii = 1:jmax
%     Uj = Q*Ujold + L*Ejold;
%     Yj = G*Uj;
%
%     Ej = Rj - Yj; Ej(1) = 0;
%
%     Ejold = Ej;
%     Ujold = Uj;
%     disp(Ej)
%     plotter(ii,t,Ej,Yj,Uj,Rj,U)
% end

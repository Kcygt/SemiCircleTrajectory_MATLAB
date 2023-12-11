% https://uk.mathworks.com/matlabcentral/answers/59641-implementation-of-iterative-learning-control-in-matlab-simulink
close all
clear all
clc
Ts = 0.001;
num = 100;
den = [1  120];
sysc = tf(num,den);
sysd = c2d(sysc,Ts,'ZOH');

% Define the numerator and denominator of the systems and Tranfer Function
plant_num = [8.331499999999999e-04 -0.002411635990000 0.001646764298800 0.001386774757085 -0.002226794738657 7.735179924151595e-04 ];
plant_den =  [1 -5.7154 13.723534400000000 -17.734220581599999 13.016931722320001  -5.148338416112000 0.857492875392000];
plant_tf = tf(plant_num,plant_den,Ts);

% Define the numerator and denominator of the Feedback controller and Tranfer Function
feedback_num = [12.33590000000000 -35.651984590000005 34.340092218032005  -11.023646014692989];
feedback_den = [1    -2.832900000000000    2.672854940000000    -0.839948725176000];
fback_tf = tf(feedback_num,feedback_den,Ts);

% Define the numerator and denominator of the Filter and feedforward and Tranfer Function
filter_num = [0.1568 0.126898240000000];
filter_den = [1 -1.25 0.5335];
filter_tf = tf(filter_num,filter_den,Ts);
fforward_tf = filter_tf / plant_tf;
[fforward_num,fforward_den] = tfdata(fforward_tf);
fforward_num = fforward_num{1};
fforward_den = fforward_den{1}; 
system_tf = feedback(plant_tf*fback_tf,1);


% Get state space values for ILC
[Ad, Bd, Cd, Dd] = ssdata(system_tf);

% Initial condition x0, time range t - assume 1 second, pure time delay n0, relative
% degree r, and matrix size N
x0 = 0;
t = 0:Ts:0.6;
n0 = 0;
r = 1;
N = length(t);
% Define input vector U and reference J - Refernce = input for this example
% Rj = [0*ones(1,(N-1)/5) 1*ones(1,(N-1)/5) 1*ones(1,(N-1)/5) 1*ones(1,(N-1)/5) 0*ones(1,(N-1)/5+1)]';

Rj = zeros(size(t))';
Rj(t < 0.3) = 0;
Rj((t >= 0.3) & (t < 0.4)) = linspace(0, 1, sum((t >= 0.3) & (t < 0.4)));
Rj(t >= 0.4) = 1;

% Rj= sin(20*t');
U = Rj;
% G0 not formulated as initial condition is 0
% Formulate G
Gvec = zeros(N,1);
rVec = ((r-1):(N-n0-1))';

for ii = 1:length(rVec)
    ApowVec = Ad^rVec(ii);
    Gvec(ii) = Cd*ApowVec*Bd;
end
G = tril(toeplitz(Gvec));
% Set up ILC
jmax = 5;

l0 = 0.95; L = l0 * eye(N,N);
q0 = 1.00; Q = q0 * eye(N,N);

Uj = zeros(N,1); Ujold = Uj;
Ej = zeros(N,1); Ejold = Ej;

% Run ILC and plot the response for each iteration
for ii = 1:jmax
    Uj = Q*Ujold + L*Ejold;
    Yj = G*Uj;
    Ej = Rj - Yj; Ej(1) = 0;
    Ejold = Ej;
    Ujold = Uj;
    plotter(ii,t,Ej,Yj,Uj,Rj,U)
end

%%%%% SICILIANO DATA ANALYSIS
close all
addpath 'C:\Users\KCY\OneDrive - University of Reading\Documents\GitHub\SemiCircleTrajectory_MATLAB\newversion\SicilianoData'

data = struct();

data.DesiredJointVelocity = load('desiredJointVelocity.csv');
data.DesiredJointPosition = load('desiredJointPosition.csv');

data.JointPosition = load('jointPosition.csv');
data.JointVelocity = load('jointVelocity.csv');

data.Time = load('simulationTime.csv');
data.Force = load('wrench.csv');

data.xDes = zeros(length(data.Time), 3);
data.xdDes = load('desiredEndEffectorVelocity.csv');
data.xAct = zeros(length(data.Time), 3);


data.SicilianoT = load('SicilianoT_log.csv');
data.pathx = load('pathx.csv');





for i = 1:length(data.xDes)

   [data.xDes(i, :), ~] = forwardKinematics(data.DesiredJointPosition(i,:));
   [data.xAct(i, :), ~] = forwardKinematics(data.JointPosition(i,:));

end
q0 = deg2rad([0.0 270.0 0.0 138.0 0.0 50.0 0.0]);
x0 = forwardKinematics(q0);
radius = 0.055;
%%% PLOTTING

figure(1)
hold on; grid on;

plot(data.xDes(:,3),-data.xDes(:,1),'.-')
plot(data.xAct(:,3),-data.xAct(:,1),'.-')
plot(data.SicilianoT(:,3),-data.SicilianoT(:,1),'.-')
plot(-data.pathx(:,1) + radius + x0(3),data.pathx(:,3)-x0(1))
legend('Desired from hypodrome output','Actual from KINOVA','Siciliano','Hypodrome function ')
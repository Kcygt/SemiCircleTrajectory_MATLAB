%%%%% SICILIANO DATA ANALYSIS
close all
% addpath 'C:\Users\zs839395\Documents\GitHub\SemiCircleTrajectory_MATLAB\20102023_data'

data = struct();

data.DesiredJointVelocity = load('Flat_R0.050000_T30.000000_1_desiredJointVelocity.csv');
data.DesiredJointPosition = load('Flat_R0.050000_T30.000000_1_desiredJointPosition.csv');

data.JointPosition = load('Flat_R0.050000_T30.000000_1_jointPosition.csv');
data.JointVelocity = load('Flat_R0.050000_T30.000000_1_jointVelocity.csv');

data.Time = load('Flat_R0.050000_T30.000000_1_simulationTime.csv');
data.Force = load('Flat_R0.050000_T30.000000_1_wrench.csv');

data.xDes = zeros(length(data.Time), 3);
data.xdDes = load('Flat_R0.050000_T30.000000_1_desiredEndEffectorVelocity.csv');
data.xAct = zeros(length(data.Time), 3);
data.xdAct = zeros(length(data.Time), 6);


for i = 1:length(data.xDes)

   [data.xAct(i, :), ~] = forwardKinematics(data.JointPosition(i,:));

end
q0 = deg2rad([0.0 270.0 0.0 138.0 0.0 50.0 0.0]);
x0 = forwardKinematics(q0);
radius = 0.055;
%%% PLOTTING
plot3(data.xAct(:,3),data.xAct(:,2),data.xAct(:,1))
title('Actual Cartesian Position')



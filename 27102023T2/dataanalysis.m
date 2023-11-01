%%%%% SICILIANO DATA ANALYSIS
close all
% addpath 'C:\Users\zs839395\Documents\GitHub\SemiCircleTrajectory_MATLAB\20102023_data'

dataVel = struct();

dataVel.DesiredJointVelocity = load('desiredJointVelocity.csv');
dataVel.DesiredJointPosition = load('desiredJointPosition.csv');

dataVel.JointPosition = load('jointPosition.csv');
dataVel.JointVelocity = load('jointVelocity.csv');

dataVel.Time = load('simulationTime.csv');
dataVel.Force = load('wrench.csv');

dataVel.xDes = zeros(length(dataVel.Time), 3);
dataVel.xdDes = load('desiredEndEffectorVelocity.csv');
dataVel.xAct = zeros(length(dataVel.Time), 3);
dataVel.xdAct = zeros(length(dataVel.Time), 6);


dataVel.SicilianoT = load('SicilianoT_log.csv');
dataVel.pathx = load('pathx.csv');





for i = 1:length(dataVel.xDes)

   [dataVel.xDes(i, :), ~] = forwardKinematics(dataVel.DesiredJointPosition(i,:));
   [dataVel.xAct(i, :), ~] = forwardKinematics(dataVel.JointPosition(i,:));
   dataVel.xdAct(i, :) = Jacobian(dataVel.JointPosition(i,:)) * dataVel.DesiredJointVelocity(i,:)';

end
q0 = deg2rad([0.0 270.0 0.0 138.0 0.0 50.0 0.0]);
x0 = forwardKinematics(q0);
% radius = 0.055;
%%% PLOTTING

figure(1)
hold on; grid on;

plot(dataVel.xDes(:,3),-dataVel.xDes(:,1))
plot(dataVel.xAct(:,3),-dataVel.xAct(:,1))
legend('Desired from hypodrome output','Actual from KINOVA')


figure(2)
hold on; grid on;
plot(dataVel.Time,dataVel.xdDes(:,1))
plot(dataVel.Time,dataVel.xdAct(:,1))
ylabel('Velocity (cm/sn)')
xlabel('Time')
title('Cartesian Velocity')
legend('Desired','Actual')

figure(3)
hold on; grid on;
plot(dataVel.Time,dataVel.DesiredJointVelocity(:,2))
plot(dataVel.Time,dataVel.JointVelocity(:,2))
title('Joint Velocity')
legend('Desired Joint Velocity','Actual Joint Velocity')

figure(4)
hold on; grid on;
plot(dataVel.Time,dataVel.DesiredJointPosition(:,4))
plot(dataVel.Time,dataVel.JointPosition(:,4))
title('Joint Position')
legend('Desired Joint Position','Actual Joint Position')


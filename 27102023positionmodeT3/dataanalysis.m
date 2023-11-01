%%%%% SICILIANO DATA ANALYSIS
close all
% addpath 'C:\Users\zs839395\Documents\GitHub\SemiCircleTrajectory_MATLAB\20102023_data'

dataPos = struct();

dataPos.DesiredJointVelocity = load('desiredJointVelocity.csv');
dataPos.DesiredJointPosition = load('desiredJointPosition.csv');

dataPos.JointPosition = load('jointPosition.csv');
dataPos.JointVelocity = load('jointVelocity.csv');

dataPos.Time = load('simulationTime.csv');
dataPos.Force = load('wrench.csv');

dataPos.xDes = zeros(length(dataPos.Time), 3);
dataPos.xdDes = load('desiredEndEffectorVelocity.csv');
dataPos.xAct = zeros(length(dataPos.Time), 3);
dataPos.xdAct = zeros(length(dataPos.Time), 6);


dataPos.SicilianoT = load('SicilianoT_log.csv');
dataPos.pathx = load('pathx.csv');





for i = 1:length(dataPos.xDes)

   [dataPos.xDes(i, :), ~] = forwardKinematics(dataPos.DesiredJointPosition(i,:));
   [dataPos.xAct(i, :), ~] = forwardKinematics(dataPos.JointPosition(i,:));
   dataPos.xdAct(i, :) = Jacobian(dataPos.JointPosition(i,:)) * dataPos.DesiredJointVelocity(i,:)';

end
q0 = deg2rad([0.0 270.0 0.0 138.0 0.0 50.0 0.0]);
x0 = forwardKinematics(q0);
radius = 0.055;
%%% PLOTTING

figure(1)
hold on; grid on;

plot(dataPos.xDes(:,3),-dataPos.xDes(:,1))
plot(dataPos.xAct(:,3),-dataPos.xAct(:,1))
legend('Desired from hypodrome output','Actual from KINOVA')


figure(2)
hold on; grid on;
plot(dataPos.Time,dataPos.xdDes(:,1))
plot(dataPos.Time,dataPos.xdAct(:,1))
ylabel('Velocity (cm/sn)')
xlabel('Time')
title('Cartesian Velocity')
legend('Desired','Actual')

figure(3)
hold on; grid on;
plot(dataPos.Time,dataPos.DesiredJointVelocity(:,2))
plot(dataPos.Time,dataPos.JointVelocity(:,2))
title('Joint Velocity')
legend('Desired Joint Velocity','Actual Joint Velocity')

figure(4)
hold on; grid on;
plot(dataPos.Time,dataPos.DesiredJointPosition(:,4))
plot(dataPos.Time,dataPos.JointPosition(:,4))
title('Joint Position')
legend('Desired Joint Position','Actual Joint Position')


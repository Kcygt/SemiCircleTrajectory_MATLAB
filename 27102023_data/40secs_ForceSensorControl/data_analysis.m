%%%%% SICILIANO DATA ANALYSIS
close all
% addpath 'C:\Users\zs839395\Documents\GitHub\SemiCircleTrajectory_MATLAB\20102023_data'

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
data.xdAct = zeros(length(data.Time), 6);


data.SicilianoT = load('SicilianoT_log.csv');
data.pathx = load('pathx.csv');





for i = 1:length(data.xDes)

   [data.xDes(i, :), ~] = forwardKinematics(data.DesiredJointPosition(i,:));
   [data.xAct(i, :), ~] = forwardKinematics(data.JointPosition(i,:));
   % data.xdAct(i, :) = jacobian(data.JointPosition(i,:)) * data.DesiredJointVelocity(i,:)';

end
q0 = deg2rad([0.0 270.0 0.0 138.0 0.0 50.0 0.0]);
x0 = forwardKinematics(q0);
radius = 0.055;
%%% PLOTTING

figure(1)
hold on; grid on;
plot3(data.xAct(:,3),data.xAct(:,2),data.xAct(:,1))
legend('Desired from hypodrome output','Actual from KINOVA')


figure(2)
hold on; grid on;
plot(data.Time,data.xdDes(:,1))
plot(data.Time,data.xdAct(:,1))
ylabel('Velocity (cm/sn)')
xlabel('Time')
title('Cartesian Velocity')
legend('Desired','Actual')

figure(3)
hold on; grid on;
plot(data.Time,data.DesiredJointVelocity(:,2))
plot(data.Time,data.JointVelocity(:,2))
title('Joint Velocity')
legend('Desired Joint Velocity','Actual Joint Velocity')

figure(4)
hold on; grid on;
plot(data.Time,data.DesiredJointPosition(:,4))
plot(data.Time,data.JointPosition(:,4))
title('Joint Position')
legend('Desired Joint Position','Actual Joint Position')


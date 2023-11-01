%%%%% SICILIANO DATA ANALYSIS
close all
% addpath 'C:\Users\zs839395\Documents\GitHub\SemiCircleTrajectory_MATLAB\20102023_data'

dataTHV = struct();

dataTHV.DesiredJointVelocity = load('desiredJointVelocity.csv');
dataTHV.DesiredJointPosition = load('desiredJointPosition.csv');

dataTHV.JointPosition = load('jointPosition.csv');
dataTHV.JointVelocity = load('jointVelocity.csv');

dataTHV.Time = load('simulationTime.csv');
dataTHV.Force = load('wrench.csv');

dataTHV.xDes = zeros(length(dataTHV.Time), 3);
dataTHV.xdDes = load('desiredEndEffectorVelocity.csv');
dataTHV.xAct = zeros(length(dataTHV.Time), 3);
dataTHV.xdAct = zeros(length(dataTHV.Time), 6);


dataTHV.SicilianoT = load('SicilianoT_log.csv');
dataTHV.pathx = load('pathx.csv');





for i = 1:length(dataTHV.xDes)

   [dataTHV.xDes(i, :), ~] = forwardKinematics(dataTHV.DesiredJointPosition(i,:));
   [dataTHV.xAct(i, :), ~] = forwardKinematics(dataTHV.JointPosition(i,:));
   dataTHV.xdAct(i, :) = Jacobian(dataTHV.JointPosition(i,:)) * dataTHV.DesiredJointVelocity(i,:)';

end
q0 = deg2rad([0.0 270.0 0.0 138.0 0.0 50.0 0.0]);
x0 = forwardKinematics(q0);
radius = 0.055;
%%% PLOTTING

figure(1)
hold on; grid on;

plot(dataTHV.xDes(:,3),-dataTHV.xDes(:,1))
plot(dataTHV.xAct(:,3),-dataTHV.xAct(:,1))
legend('Desired from hypodrome output','Actual from KINOVA')


figure(2)
hold on; grid on;
plot(dataTHV.Time,dataTHV.xdDes(:,1))
plot(dataTHV.Time,dataTHV.xdAct(:,1))
ylabel('Velocity (cm/sn)')
xlabel('Time')
title('Cartesian Velocity')
legend('Desired','Actual')

figure(3)
hold on; grid on;
plot(dataTHV.Time,dataTHV.DesiredJointVelocity(:,2))
plot(dataTHV.Time,dataTHV.JointVelocity(:,2))
title('Joint Velocity')
legend('Desired Joint Velocity','Actual Joint Velocity')

figure(4)
hold on; grid on;
plot(dataTHV.Time,dataTHV.DesiredJointPosition(:,4))
plot(dataTHV.Time,dataTHV.JointPosition(:,4))
title('Joint Position')
legend('Desired Joint Position','Actual Joint Position')


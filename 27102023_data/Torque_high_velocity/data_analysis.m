%%%%% SICILIANO DATA ANALYSIS
close all
addpath 'C:\Users\zs839395\Documents\GitHub\SemiCircleTrajectory_MATLAB\20102023_data'

dataTorque = struct();

dataTorque.DesiredJointVelocity = load('desiredJointVelocity.csv');
dataTorque.DesiredJointPosition = load('desiredJointPosition.csv');

dataTorque.JointPosition = load('jointPosition.csv');
dataTorque.JointVelocity = load('jointVelocity.csv');

dataTorque.Time = load('simulationTime.csv');
dataTorque.Force = load('wrench.csv');

dataTorque.xDes = zeros(length(dataTorque.Time), 3);
dataTorque.xdDes = load('desiredEndEffectorVelocity.csv');
dataTorque.xAct = zeros(length(dataTorque.Time), 3);
dataTorque.xdAct = zeros(length(dataTorque.Time), 6);


dataTorque.SicilianoT = load('SicilianoT_log.csv');
dataTorque.pathx = load('pathx.csv');





for i = 1:length(dataTorque.xDes)

   [dataTorque.xDes(i, :), ~] = forwardKinematics(dataTorque.DesiredJointPosition(i,:));
   [dataTorque.xAct(i, :), ~] = forwardKinematics(dataTorque.JointPosition(i,:));
   dataTorque.xdAct(i, :) = Jacobian(dataTorque.JointPosition(i,:)) * dataTorque.DesiredJointVelocity(i,:)';

end
q0 = deg2rad([0.0 270.0 0.0 138.0 0.0 50.0 0.0]);
x0 = forwardKinematics(q0);
radius = 0.055;
%%% PLOTTING

figure(1)
hold on; grid on;

plot(dataTorque.xDes(:,3),-dataTorque.xDes(:,1))
plot(dataTorque.xAct(:,3),-dataTorque.xAct(:,1))
legend('Desired from hypodrome output','Actual from KINOVA')


figure(2)
hold on; grid on;
plot(dataTorque.Time,dataTorque.xdDes(:,1))
plot(dataTorque.Time,dataTorque.xdAct(:,1))
ylabel('Velocity (cm/sn)')
xlabel('Time')
title('Cartesian Velocity')
legend('Desired','Actual')

figure(3)
hold on; grid on;
plot(dataTorque.Time,dataTorque.DesiredJointVelocity(:,2))
plot(dataTorque.Time,dataTorque.JointVelocity(:,2))
title('Joint Velocity')
legend('Desired Joint Velocity','Actual Joint Velocity')

figure(4)
hold on; grid on;
plot(dataTorque.Time,dataTorque.DesiredJointPosition(:,4))
plot(dataTorque.Time,dataTorque.JointPosition(:,4))
title('Joint Position')
legend('Desired Joint Position','Actual Joint Position')


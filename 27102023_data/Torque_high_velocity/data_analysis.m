%%%%% SICILIANO DATA ANALYSIS
close all
dataTorqueVel = struct();

dataTorqueVel.DesiredJointVelocity = load('desiredJointVelocity.csv');
dataTorqueVel.DesiredJointPosition = load('desiredJointPosition.csv');

dataTorqueVel.JointPosition = load('jointPosition.csv');
dataTorqueVel.JointVelocity = load('jointVelocity.csv');

dataTorqueVel.Time = load('simulationTime.csv');
dataTorqueVel.Force = load('wrench.csv');

dataTorqueVel.xDes = zeros(length(dataTorqueVel.Time), 3);
dataTorqueVel.xdDes = load('desiredEndEffectorVelocity.csv');
dataTorqueVel.xAct = zeros(length(dataTorqueVel.Time), 3);
dataTorqueVel.xdAct = zeros(length(dataTorqueVel.Time), 6);


dataTorqueVel.SicilianoT = load('SicilianoT_log.csv');
dataTorqueVel.pathx = load('pathx.csv');





for i = 1:length(dataTorqueVel.xDes)

   [dataTorqueVel.xDes(i, :), ~] = forwardKinematics(dataTorqueVel.DesiredJointPosition(i,:));
   [dataTorqueVel.xAct(i, :), ~] = forwardKinematics(dataTorqueVel.JointPosition(i,:));

end
q0 = deg2rad([0.0 270.0 0.0 138.0 0.0 50.0 0.0]);
x0 = forwardKinematics(q0);
radius = 0.055;


%%% PLOTTING
figure(1)
hold on; grid on;
plot(dataTorqueVel.xDes(:,3),-dataTorqueVel.xDes(:,1))
plot(dataTorqueVel.xAct(:,3),-dataTorqueVel.xAct(:,1))
legend('Desired from hypodrome output','Actual from KINOVA')

figure(2)
hold on; grid on;
plot(dataTorqueVel.Time,dataTorqueVel.DesiredJointVelocity(:,2))
plot(dataTorqueVel.Time,dataTorqueVel.JointVelocity(:,2))
title('Joint Velocity')
legend('Desired Joint Velocity','Actual Joint Velocity')

figure(3)
hold on; grid on;
plot(dataTorqueVel.Time,dataTorqueVel.DesiredJointPosition(:,4))
plot(dataTorqueVel.Time,dataTorqueVel.JointPosition(:,4))
title('Joint Position')
legend('Desired Joint Position','Actual Joint Position')


%%%%% SICILIANO DATA ANALYSIS
close all

dataPosition.DesiredJointVelocity = load('desiredJointVelocity.csv');
dataPosition.DesiredJointPosition = load('desiredJointPosition.csv');

dataPosition.JointPosition = load('jointPosition.csv');
dataPosition.JointVelocity = load('jointVelocity.csv');

dataPosition.Time = load('simulationTime.csv');
dataPosition.Force = load('wrench.csv');

dataPosition.xDes = zeros(length(dataPosition.Time), 3);
dataPosition.xdDes = load('desiredEndEffectorVelocity.csv');
dataPosition.xAct = zeros(length(dataPosition.Time), 3);
dataPosition.xdAct = zeros(length(dataPosition.Time), 6);

for i = 1:length(dataPosition.xDes)

   [dataPosition.xDes(i, :), ~] = forwardKinematics(dataPosition.DesiredJointPosition(i,:));
   [dataPosition.xAct(i, :), ~] = forwardKinematics(dataPosition.JointPosition(i,:));

end
q0 = deg2rad([0.0 270.0 0.0 138.0 0.0 50.0 0.0]);
x0 = forwardKinematics(q0);
radius = 0.055;

%%% PLOTTING
figure(1)
hold on; grid on;
plot(dataPosition.xDes(:,3),-dataPosition.xDes(:,1))
plot(dataPosition.xAct(:,3),-dataPosition.xAct(:,1))
legend('Desired from hypodrome output','Actual from KINOVA')
title('Position Mode') 
xlabel('Z direction (cm)')
ylabel('X direction (cm)')
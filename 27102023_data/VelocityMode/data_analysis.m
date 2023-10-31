%%%%% SICILIANO DATA ANALYSIS
close all
dataVelocity = struct();

%%%%%%%%%%%%
%%% Time = 1.5 sec 
%%%%%%%%%%%%

dataVelocity.T1_5.I1.DesiredJointVelocity = load('Flat_R0.050000_T1.500000_1_desiredJointVelocity.csv');
dataVelocity.T1_5.I1.DesiredJointPosition = load('Flat_R0.050000_T1.500000_1_desiredJointPosition.csv');

dataVelocity.T1_5.I1.JointPosition = load('Flat_R0.050000_T1.500000_1_jointPosition.csv');
dataVelocity.T1_5.I1.JointVelocity = load('Flat_R0.050000_T1.500000_1_jointVelocity.csv');

dataVelocity.T1_5.I1.Time = load('Flat_R0.050000_T1.500000_1_simulationTime.csv');
dataVelocity.T1_5.I1.Force = load('Flat_R0.050000_T1.500000_1_wrench.csv');

dataVelocity.T1_5.I1.xDes = zeros(length(dataVelocity.T1_5.I1.Time), 3);
dataVelocity.T1_5.I1.xdDes = load('Flat_R0.050000_T1.500000_1_desiredEndEffectorVelocity.csv');
dataVelocity.T1_5.I1.xAct = zeros(length(dataVelocity.T1_5.I1.Time), 3);
dataVelocity.T1_5.I1.xdAct = zeros(length(dataVelocity.T1_5.I1.Time), 6);

for i = 1:length(dataVelocity.T1_5.I1.xDes)

   [dataVelocity.T1_5.I1.xDes(i, :), ~] = forwardKinematics(dataVelocity.T1_5.I1.DesiredJointPosition(i,:));
   [dataVelocity.T1_5.I1.xAct(i, :), ~] = forwardKinematics(dataVelocity.T1_5.I1.JointPosition(i,:));

end

dataVelocity.T1_5.I2.DesiredJointVelocity = load('Flat_R0.050000_T1.500000_2_desiredJointVelocity.csv');
dataVelocity.T1_5.I2.DesiredJointPosition = load('Flat_R0.050000_T1.500000_2_desiredJointPosition.csv');

dataVelocity.T1_5.I2.JointPosition = load('Flat_R0.050000_T1.500000_2_jointPosition.csv');
dataVelocity.T1_5.I2.JointVelocity = load('Flat_R0.050000_T1.500000_2_jointVelocity.csv');

dataVelocity.T1_5.I2.Time = load('Flat_R0.050000_T1.500000_2_simulationTime.csv');
dataVelocity.T1_5.I2.Force = load('Flat_R0.050000_T1.500000_2_wrench.csv');

dataVelocity.T1_5.I2.xDes = zeros(length(dataVelocity.T1_5.I2.Time), 3);
dataVelocity.T1_5.I2.xdDes = load('Flat_R0.050000_T1.500000_2_desiredEndEffectorVelocity.csv');
dataVelocity.T1_5.I2.xAct = zeros(length(dataVelocity.T1_5.I2.Time), 3);
dataVelocity.T1_5.I2.xdAct = zeros(length(dataVelocity.T1_5.I2.Time), 6);

for i = 1:length(dataVelocity.T1_5.I2.xDes)

   [dataVelocity.T1_5.I2.xDes(i, :), ~] = forwardKinematics(dataVelocity.T1_5.I2.DesiredJointPosition(i,:));
   [dataVelocity.T1_5.I2.xAct(i, :), ~] = forwardKinematics(dataVelocity.T1_5.I2.JointPosition(i,:));

end



dataVelocity.T1_5.I3.DesiredJointVelocity = load('Flat_R0.050000_T1.500000_3_desiredJointVelocity.csv');
dataVelocity.T1_5.I3.DesiredJointPosition = load('Flat_R0.050000_T1.500000_3_desiredJointPosition.csv');

dataVelocity.T1_5.I3.JointPosition = load('Flat_R0.050000_T1.500000_3_jointPosition.csv');
dataVelocity.T1_5.I3.JointVelocity = load('Flat_R0.050000_T1.500000_3_jointVelocity.csv');

dataVelocity.T1_5.I3.Time = load('Flat_R0.050000_T1.500000_3_simulationTime.csv');
dataVelocity.T1_5.I3.Force = load('Flat_R0.050000_T1.500000_3_wrench.csv');

dataVelocity.T1_5.I3.xDes = zeros(length(dataVelocity.T1_5.I3.Time), 3);
dataVelocity.T1_5.I3.xdDes = load('Flat_R0.050000_T1.500000_3_desiredEndEffectorVelocity.csv');
dataVelocity.T1_5.I3.xAct = zeros(length(dataVelocity.T1_5.I3.Time), 3);
dataVelocity.T1_5.I3.xdAct = zeros(length(dataVelocity.T1_5.I3.Time), 6);

for i = 1:length(dataVelocity.T1_5.I3.xDes)

   [dataVelocity.T1_5.I3.xDes(i, :), ~] = forwardKinematics(dataVelocity.T1_5.I3.DesiredJointPosition(i,:));
   [dataVelocity.T1_5.I3.xAct(i, :), ~] = forwardKinematics(dataVelocity.T1_5.I3.JointPosition(i,:));

end


%%%%%%%%%%%%
%%% Time = 2 secs
%%%%%%%%%%%%

dataVelocity.T2.I1.DesiredJointVelocity = load('Flat_R0.050000_T2.000000_1_desiredJointVelocity.csv');
dataVelocity.T2.I1.DesiredJointPosition = load('Flat_R0.050000_T2.000000_1_desiredJointPosition.csv');

dataVelocity.T2.I1.JointPosition = load('Flat_R0.050000_T2.000000_1_jointPosition.csv');
dataVelocity.T2.I1.JointVelocity = load('Flat_R0.050000_T2.000000_1_jointVelocity.csv');

dataVelocity.T2.I1.Time = load('Flat_R0.050000_T2.000000_1_simulationTime.csv');
dataVelocity.T2.I1.Force = load('Flat_R0.050000_T2.000000_1_wrench.csv');

dataVelocity.T2.I1.xDes = zeros(length(dataVelocity.T2.I1.Time), 3);
dataVelocity.T2.I1.xdDes = load('Flat_R0.050000_T2.000000_1_desiredEndEffectorVelocity.csv');
dataVelocity.T2.I1.xAct = zeros(length(dataVelocity.T2.I1.Time), 3);
dataVelocity.T2.I1.xdAct = zeros(length(dataVelocity.T2.I1.Time), 6);

for i = 1:length(dataVelocity.T2.I1.xDes)

   [dataVelocity.T2.I1.xDes(i, :), ~] = forwardKinematics(dataVelocity.T2.I1.DesiredJointPosition(i,:));
   [dataVelocity.T2.I1.xAct(i, :), ~] = forwardKinematics(dataVelocity.T2.I1.JointPosition(i,:));

end



dataVelocity.T2.I2.DesiredJointVelocity = load('Flat_R0.050000_T2.000000_2_desiredJointVelocity.csv');
dataVelocity.T2.I2.DesiredJointPosition = load('Flat_R0.050000_T2.000000_2_desiredJointPosition.csv');

dataVelocity.T2.I2.JointPosition = load('Flat_R0.050000_T2.000000_2_jointPosition.csv');
dataVelocity.T2.I2.JointVelocity = load('Flat_R0.050000_T2.000000_2_jointVelocity.csv');

dataVelocity.T2.I2.Time = load('Flat_R0.050000_T2.000000_2_simulationTime.csv');
dataVelocity.T2.I2.Force = load('Flat_R0.050000_T2.000000_2_wrench.csv');

dataVelocity.T2.I2.xDes = zeros(length(dataVelocity.T2.I2.Time), 3);
dataVelocity.T2.I2.xdDes = load('Flat_R0.050000_T2.000000_2_desiredEndEffectorVelocity.csv');
dataVelocity.T2.I2.xAct = zeros(length(dataVelocity.T2.I2.Time), 3);
dataVelocity.T2.I2.xdAct = zeros(length(dataVelocity.T2.I2.Time), 6);

for i = 1:length(dataVelocity.T2.I2.xDes)

   [dataVelocity.T2.I2.xDes(i, :), ~] = forwardKinematics(dataVelocity.T2.I2.DesiredJointPosition(i,:));
   [dataVelocity.T2.I2.xAct(i, :), ~] = forwardKinematics(dataVelocity.T2.I2.JointPosition(i,:));

end



dataVelocity.T2.I3.DesiredJointVelocity = load('Flat_R0.050000_T2.000000_3_desiredJointVelocity.csv');
dataVelocity.T2.I3.DesiredJointPosition = load('Flat_R0.050000_T2.000000_3_desiredJointPosition.csv');

dataVelocity.T2.I3.JointPosition = load('Flat_R0.050000_T2.000000_3_jointPosition.csv');
dataVelocity.T2.I3.JointVelocity = load('Flat_R0.050000_T2.000000_3_jointVelocity.csv');

dataVelocity.T2.I3.Time = load('Flat_R0.050000_T2.000000_3_simulationTime.csv');
dataVelocity.T2.I3.Force = load('Flat_R0.050000_T2.000000_3_wrench.csv');

dataVelocity.T2.I3.xDes = zeros(length(dataVelocity.T2.I3.Time), 3);
dataVelocity.T2.I3.xdDes = load('Flat_R0.050000_T2.000000_3_desiredEndEffectorVelocity.csv');
dataVelocity.T2.I3.xAct = zeros(length(dataVelocity.T2.I3.Time), 3);
dataVelocity.T2.I3.xdAct = zeros(length(dataVelocity.T2.I3.Time), 6);
for i = 1:length(dataVelocity.T2.I3.xDes)

   [dataVelocity.T2.I3.xDes(i, :), ~] = forwardKinematics(dataVelocity.T2.I3.DesiredJointPosition(i,:));
   [dataVelocity.T2.I3.xAct(i, :), ~] = forwardKinematics(dataVelocity.T2.I3.JointPosition(i,:));

end


figure(1)
hold on; grid on;
plot(dataVelocity.T2.I1.xDes(:,3),-dataVelocity.T2.I1.xDes(:,1))
plot(dataVelocity.T2.I1.xAct(:,3),-dataVelocity.T2.I1.xAct(:,1))
legend('Desired trajectory','Actual trajectory')


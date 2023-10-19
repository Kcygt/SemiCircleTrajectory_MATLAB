xDes = zeros(length(Siciliano), 3);
xAct = zeros(length(jointPosition), 3);

for i = 1:length(xDes)

   [xDes(i, :), ~] = forwardKinematics(desiredJointPosition(i,:));
   [xAct(i, :), ~] = forwardKinematics(jointPosition(i,:));

end


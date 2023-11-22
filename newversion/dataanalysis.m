% Choose directory
rootdir1 = ['FCat_R0.050000/Flat_R0.050000_T%.6f_1',...
          'FCat_R0.055000/Flat_R0.055000_T%.6f_1',...
          'FCat_R0.060000/Flat_R0.060000_T%.6f_1',...
          'RCmp_R0.050000/Ramp_R0.050000_T%.6f_1',...
          'RCmp_R0.055000/Ramp_R0.055000_T%.6f_1',...
          'RCmp_R0.060000/Ramp_R0.060000_T%.6f_1',...
          'FAir_R0.055000/Fair_R0.055000_T%.6f_1',...
          'RAir_R0.055000/Rair_R0.055000_T%.6f_1'];
rootdir2 = ['FCat_R0.050000/Flat_R0.050000_T%.6f_2',...
          'FCat_R0.055000/Flat_R0.055000_T%.6f_2',...
          'FCat_R0.060000/Flat_R0.060000_T%.6f_2',...
          'RCmp_R0.050000/Ramp_R0.050000_T%.6f_2',...
          'RCmp_R0.055000/Ramp_R0.055000_T%.6f_2',...
          'RCmp_R0.060000/Ramp_R0.060000_T%.6f_2',...
          'FAir_R0.055000/Fair_R0.055000_T%.6f_2',...
          'RAir_R0.055000/Rair_R0.055000_T%.6f_2'];
rootdir3 = ['FCat_R0.050000/Flat_R0.050000_T%.6f_3',...
          'FCat_R0.055000/Flat_R0.055000_T%.6f_3',...
          'FCat_R0.060000/Flat_R0.060000_T%.6f_3',...
          'RCmp_R0.050000/Ramp_R0.050000_T%.6f_3',...
          'RCmp_R0.055000/Ramp_R0.055000_T%.6f_3',...
          'RCmp_R0.060000/Ramp_R0.060000_T%.6f_3',...
          'FAir_R0.055000/Fair_R0.055000_T%.6f_3',...
          'RAir_R0.055000/Rair_R0.055000_T%.6f_3'];


timeFrames = [10, 8, 6, 4, 3];
numFrames = length(timeFrames);

data1 = struct();
data2 = struct();
data3 = struct();

for directory = 1:8
    for index = 1:numFrames
        timeFrame = timeFrames(index);
        fprintf('Processing time frame %d...\n', timeFrame);

        dirFormat = sprintf(rootdir1(1+37*(directory-1):37+37*(directory-1)), timeFrame);

        if timeFrame == 10
            numFiles = 41;
        else
            numFiles = 40;
        end

        % Load data3
        datadir = sprintf('%s%s%s%s',rootdir1(1+37*(directory-1)),rootdir1(2+37*(directory-1)),rootdir1(10+37*(directory-1)),rootdir1(11+37*(directory-1)));
        datatime = sprintf('T%d', timeFrames(index));

        data1.(datadir).(datatime).DesiredJointVelocity = load(fullfile(dirFormat, sprintf('%s_desiredJointVelocity.csv',  dirFormat(15:end))));
        data1.(datadir).(datatime).DesiredJointPosition = load(fullfile(dirFormat, sprintf('%s_desiredJointPosition.csv', dirFormat(15:end))));
        data1.(datadir).(datatime).JointPosition = load(fullfile(dirFormat, sprintf('%s_jointPosition.csv', dirFormat(15:end))));
        data1.(datadir).(datatime).JointVelocity = load(fullfile(dirFormat, sprintf('%s_jointVelocity.csv', dirFormat(15:end))));
        data1.(datadir).(datatime).Time = load(fullfile(dirFormat, sprintf('%s_simulationTime.csv', dirFormat(15:end))));
        data1.(datadir).(datatime).Force = load(fullfile(dirFormat, sprintf('%s_wrench.csv', dirFormat(15:end))));
        data1.(datadir).(datatime).xDes = zeros(length(data1.(datadir).(datatime).Time), 3);
        data1.(datadir).(datatime).xdDes = load(fullfile(dirFormat, sprintf('%s_desiredEndEffectorVelocity.csv',  dirFormat(15:end))));
        data1.(datadir).(datatime).xAct = zeros(length(data1.(datadir).(datatime).Time), 3);
        data1.(datadir).(datatime).xdAct = zeros(length(data1.(datadir).(datatime).Time), 3);
        data1.(datadir).(datatime).xRec = zeros(length(data1.(datadir).(datatime).Time), 6);
        data1.(datadir).(datatime).xdRec = zeros(length(data1.(datadir).(datatime).Time), 6);

        for i = 1:length(data1.(datadir).(datatime).Time)

            [data1.(datadir).(datatime).xAct(i, :), ~] = forwardKinematics(data1.(datadir).(datatime).JointPosition(i, :));
            [data1.(datadir).(datatime).xDes(i, :), ~] = forwardKinematics(data1.(datadir).(datatime).DesiredJointPosition(i,:));
            
        end

        % switch the axis
        temp = data1.(datadir).(datatime).xAct(:, 1);
        data1.(datadir).(datatime).xAct(:, 1) = data1.(datadir).(datatime).xAct(:, 3);
        data1.(datadir).(datatime).xAct(:, 3) = -temp;
        temp = data1.(datadir).(datatime).xDes(:, 1);
        data1.(datadir).(datatime).xDes(:, 1) = data1.(datadir).(datatime).xDes(:, 3);
        data1.(datadir).(datatime).xDes(:, 3) = -temp;
        
        for i = 1:length(data1.(datadir).(datatime).xAct) - 1
            data1.(datadir).(datatime).xdAct(i, :) = (data1.(datadir).(datatime).xAct(i + 1, :) - data1.(datadir).(datatime).xAct(i, :)) /...
                (data1.(datadir).(datatime).Time(i + 1) - data1.(datadir).(datatime).Time(i));
        end
        
        for i=1:length(data1.(datadir).(datatime).Time)
            data1.(datadir).(datatime).xdRec(i,:) = jacobian(data1.(datadir).(datatime).JointPosition(i,:)) * data1.(datadir).(datatime).JointVelocity(i,:)';

        end


        % Calculate desired path and derivatives
        radius = 0.06;
        line_length = 0.2;
        alpha = (2 * line_length) / (radius * pi) + 1;
        sspace = linspace(0, alpha + 1, length(data1.(datadir).(datatime).Time));

        P_z = zeros(1, length(sspace));
        P_x = zeros(1, length(sspace));
        P_z_derivative = zeros(1, length(sspace));
        P_x_derivative = zeros(1, length(sspace));

        for i = 1:length(sspace)
            s = sspace(i);
            if s <= 1
                P_z(i) = -radius * cos(s * pi / 2);
                P_x(i) = -radius * sin(s * pi / 2);
                P_z_derivative(i) = radius * (pi / 2) * sin(s * pi / 2);
                P_x_derivative(i) = -radius * (pi / 2) * cos(s * pi / 2);
            elseif s <= alpha && s > 1
                P_z(i) = (s - 1) * (radius * pi) / 2;
                P_x(i) = -radius;
                P_z_derivative(i) = radius * pi / 2;
                P_x_derivative(i) = 0;
            else
                P_z(i) = radius * sin((s - alpha) * pi / 2) + line_length;
                P_x(i) = -radius * cos((s - alpha) * pi / 2);
                P_z_derivative(i) = radius * pi / 2 * cos((s - alpha) * pi / 2);
                P_x_derivative(i) = radius * pi / 2 * sin((s - alpha) * pi / 2);
            end
        end
    end
end

for directory = 1:8
    for index = 1:numFrames
        timeFrame = timeFrames(index);
        fprintf('Processing time frame %d...\n', timeFrame);

        dirFormat = sprintf(rootdir2(1+37*(directory-1):37+37*(directory-1)), timeFrame);

        if timeFrame == 10
            numFiles = 41;
        else
            numFiles = 40;
        end

        % Load data3
        datadir = sprintf('%s%s%s%s',rootdir2(1+37*(directory-1)),rootdir2(2+37*(directory-1)),rootdir2(10+37*(directory-1)),rootdir2(11+37*(directory-1)));
        datatime = sprintf('T%d', timeFrames(index));

        data2.(datadir).(datatime).DesiredJointVelocity = load(fullfile(dirFormat, sprintf('%s_desiredJointVelocity.csv',  dirFormat(15:end))));
        data2.(datadir).(datatime).DesiredJointPosition = load(fullfile(dirFormat, sprintf('%s_desiredJointPosition.csv', dirFormat(15:end))));
        data2.(datadir).(datatime).JointPosition = load(fullfile(dirFormat, sprintf('%s_jointPosition.csv', dirFormat(15:end))));
        data2.(datadir).(datatime).JointVelocity = load(fullfile(dirFormat, sprintf('%s_jointVelocity.csv', dirFormat(15:end))));
        data2.(datadir).(datatime).Time = load(fullfile(dirFormat, sprintf('%s_simulationTime.csv', dirFormat(15:end))));
        data2.(datadir).(datatime).Force = load(fullfile(dirFormat, sprintf('%s_wrench.csv', dirFormat(15:end))));
        data2.(datadir).(datatime).xDes = zeros(length(data2.(datadir).(datatime).Time), 3);
        data2.(datadir).(datatime).xdDes = load(fullfile(dirFormat, sprintf('%s_desiredEndEffectorVelocity.csv',  dirFormat(15:end))));
        data2.(datadir).(datatime).xAct = zeros(length(data2.(datadir).(datatime).Time), 3);
        data2.(datadir).(datatime).xdAct = zeros(length(data2.(datadir).(datatime).Time), 3);
        data2.(datadir).(datatime).xRec = zeros(length(data2.(datadir).(datatime).Time), 3);
        data2.(datadir).(datatime).xdRec = zeros(length(data2.(datadir).(datatime).Time), 3);

        for i = 1:length(data2.(datadir).(datatime).Time)

            [data2.(datadir).(datatime).xAct(i, :), ~] = forwardKinematics(data2.(datadir).(datatime).JointPosition(i, :));
            [data2.(datadir).(datatime).xDes(i, :), ~] = forwardKinematics(data2.(datadir).(datatime).DesiredJointPosition(i,:));
            
        end
        temp = data2.(datadir).(datatime).xAct(:, 1);
        data2.(datadir).(datatime).xAct(:, 1) = data2.(datadir).(datatime).xAct(:, 3);
        data2.(datadir).(datatime).xAct(:, 3) = -temp;
        temp = data2.(datadir).(datatime).xDes(:, 1);
        data2.(datadir).(datatime).xDes(:, 1) = data2.(datadir).(datatime).xDes(:, 3);
        data2.(datadir).(datatime).xDes(:, 3) = -temp;
        
        for i = 1:length(data2.(datadir).(datatime).xAct) - 1
            data2.(datadir).(datatime).xdAct(i, :) = (data2.(datadir).(datatime).xAct(i + 1, :) - data2.(datadir).(datatime).xAct(i, :)) /...
                (data2.(datadir).(datatime).Time(i + 1) - data2.(datadir).(datatime).Time(i));
        end

        % Calculate desired path and derivatives
        radius = 0.06;
        line_length = 0.2;
        alpha = (2 * line_length) / (radius * pi) + 1;
        sspace = linspace(0, alpha + 1, length(data2.(datadir).(datatime).Time));

        P_z = zeros(1, length(sspace));
        P_x = zeros(1, length(sspace));
        P_z_derivative = zeros(1, length(sspace));
        P_x_derivative = zeros(1, length(sspace));

        for i = 1:length(sspace)
            s = sspace(i);
            if s <= 1
                P_z(i) = -radius * cos(s * pi / 2);
                P_x(i) = -radius * sin(s * pi / 2);
                P_z_derivative(i) = radius * (pi / 2) * sin(s * pi / 2);
                P_x_derivative(i) = -radius * (pi / 2) * cos(s * pi / 2);
            elseif s <= alpha && s > 1
                P_z(i) = (s - 1) * (radius * pi) / 2;
                P_x(i) = -radius;
                P_z_derivative(i) = radius * pi / 2;
                P_x_derivative(i) = 0;
            else
                P_z(i) = radius * sin((s - alpha) * pi / 2) + line_length;
                P_x(i) = -radius * cos((s - alpha) * pi / 2);
                P_z_derivative(i) = radius * pi / 2 * cos((s - alpha) * pi / 2);
                P_x_derivative(i) = radius * pi / 2 * sin((s - alpha) * pi / 2);
            end
        end
    end
end
for directory = 1:8
    for index = 1:numFrames
        timeFrame = timeFrames(index);
        fprintf('Processing time frame %d...\n', timeFrame);

        dirFormat = sprintf(rootdir3(1+37*(directory-1):37+37*(directory-1)), timeFrame);

        if timeFrame == 10
            numFiles = 41;
        else
            numFiles = 40;
        end

        % Load data3
        datadir = sprintf('%s%s%s%s',rootdir3(1+37*(directory-1)),rootdir3(2+37*(directory-1)),rootdir3(10+37*(directory-1)),rootdir3(11+37*(directory-1)));
        datatime = sprintf('T%d', timeFrames(index));

        data3.(datadir).(datatime).DesiredJointVelocity = load(fullfile(dirFormat, sprintf('%s_desiredJointVelocity.csv',  dirFormat(15:end))));
        data3.(datadir).(datatime).DesiredJointPosition = load(fullfile(dirFormat, sprintf('%s_desiredJointPosition.csv', dirFormat(15:end))));
        data3.(datadir).(datatime).JointPosition = load(fullfile(dirFormat, sprintf('%s_jointPosition.csv', dirFormat(15:end))));
        data3.(datadir).(datatime).JointVelocity = load(fullfile(dirFormat, sprintf('%s_jointVelocity.csv', dirFormat(15:end))));
        data3.(datadir).(datatime).Time = load(fullfile(dirFormat, sprintf('%s_simulationTime.csv', dirFormat(15:end))));
        data3.(datadir).(datatime).Force = load(fullfile(dirFormat, sprintf('%s_wrench.csv', dirFormat(15:end))));
        data3.(datadir).(datatime).xDes = zeros(length(data3.(datadir).(datatime).Time), 3);
        data3.(datadir).(datatime).xdDes = load(fullfile(dirFormat, sprintf('%s_desiredEndEffectorVelocity.csv',  dirFormat(15:end))));
        data3.(datadir).(datatime).xAct = zeros(length(data3.(datadir).(datatime).Time), 3);
        data3.(datadir).(datatime).xdAct = zeros(length(data3.(datadir).(datatime).Time), 3);
        data3.(datadir).(datatime).xRec = zeros(length(data3.(datadir).(datatime).Time), 3);
        data3.(datadir).(datatime).xdRec = zeros(length(data3.(datadir).(datatime).Time), 3);

        for i = 1:length(data3.(datadir).(datatime).Time)

            [data3.(datadir).(datatime).xAct(i, :), ~] = forwardKinematics(data3.(datadir).(datatime).JointPosition(i, :));
            [data3.(datadir).(datatime).xDes(i, :), ~] = forwardKinematics(data3.(datadir).(datatime).DesiredJointPosition(i,:));
            
        end
        temp = data3.(datadir).(datatime).xAct(:, 1);
        data3.(datadir).(datatime).xAct(:, 1) = data3.(datadir).(datatime).xAct(:, 3);
        data3.(datadir).(datatime).xAct(:, 3) = -temp;
        temp = data3.(datadir).(datatime).xDes(:, 1);
        data3.(datadir).(datatime).xDes(:, 1) = data3.(datadir).(datatime).xDes(:, 3);
        data3.(datadir).(datatime).xDes(:, 3) = -temp;
        
        for i = 1:length(data3.(datadir).(datatime).xAct) - 1
            data3.(datadir).(datatime).xdAct(i, :) = (data3.(datadir).(datatime).xAct(i + 1, :) - data3.(datadir).(datatime).xAct(i, :)) /...
                (data3.(datadir).(datatime).Time(i + 1) - data3.(datadir).(datatime).Time(i));
        end

        % Calculate desired path and derivatives
        radius = 0.06;
        line_length = 0.2;
        alpha = (2 * line_length) / (radius * pi) + 1;
        sspace = linspace(0, alpha + 1, length(data3.(datadir).(datatime).Time));

        P_z = zeros(1, length(sspace));
        P_x = zeros(1, length(sspace));
        P_z_derivative = zeros(1, length(sspace));
        P_x_derivative = zeros(1, length(sspace));

        for i = 1:length(sspace)
            s = sspace(i);
            if s <= 1
                P_z(i) = -radius * cos(s * pi / 2);
                P_x(i) = -radius * sin(s * pi / 2);
                P_z_derivative(i) = radius * (pi / 2) * sin(s * pi / 2);
                P_x_derivative(i) = -radius * (pi / 2) * cos(s * pi / 2);
            elseif s <= alpha && s > 1
                P_z(i) = (s - 1) * (radius * pi) / 2;
                P_x(i) = -radius;
                P_z_derivative(i) = radius * pi / 2;
                P_x_derivative(i) = 0;
            else
                P_z(i) = radius * sin((s - alpha) * pi / 2) + line_length;
                P_x(i) = -radius * cos((s - alpha) * pi / 2);
                P_z_derivative(i) = radius * pi / 2 * cos((s - alpha) * pi / 2);
                P_x_derivative(i) = radius * pi / 2 * sin((s - alpha) * pi / 2);
            end
        end
    end
end



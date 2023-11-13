% Choose directory
rootdir = ['FCat_R0.050000/Flat_R0.050000_T%.6f_3',...
          'FCat_R0.055000/Flat_R0.055000_T%.6f_3',...
          'FCat_R0.060000/Flat_R0.060000_T%.6f_3',...
          'RCmp_R0.050000/Ramp_R0.050000_T%.6f_3',...
          'RCmp_R0.055000/Ramp_R0.055000_T%.6f_3',...
          'RCmp_R0.060000/Ramp_R0.060000_T%.6f_3',...
          'FAir_R0.055000/Fair_R0.055000_T%.6f_3',...
          'RAir_R0.055000/Rair_R0.055000_T%.6f_3'];

timeFrames = [10, 8, 6, 4, 3];
numFrames = length(timeFrames);

data = struct();
for directory = 1:8
    for index = 1:numFrames
        timeFrame = timeFrames(index);
        fprintf('Processing time frame %d...\n', timeFrame);

        dirFormat = sprintf(rootdir(1+37*(directory-1):37+37*(directory-1)), timeFrame);

        if timeFrame == 10
            numFiles = 41;
        else
            numFiles = 40;
        end

        % Load data3
        datadir = sprintf('%s%s%s%s',rootdir(1+37*(directory-1)),rootdir(2+37*(directory-1)),rootdir(10+37*(directory-1)),rootdir(11+37*(directory-1)));
        datatime = sprintf('T%d', timeFrames(index));

        data.(datadir).(datatime).DesiredJointVelocity = load(fullfile(dirFormat, sprintf('%s_desiredJointVelocity.csv',  dirFormat(15:end))));
        data.(datadir).(datatime).DesiredJointPosition = load(fullfile(dirFormat, sprintf('%s_desiredJointPosition.csv', dirFormat(15:end))));
        data.(datadir).(datatime).JointPosition = load(fullfile(dirFormat, sprintf('%s_jointPosition.csv', dirFormat(15:end))));
        data.(datadir).(datatime).JointVelocity = load(fullfile(dirFormat, sprintf('%s_jointVelocity.csv', dirFormat(15:end))));
        data.(datadir).(datatime).Time = load(fullfile(dirFormat, sprintf('%s_simulationTime.csv', dirFormat(15:end))));
        data.(datadir).(datatime).Force = load(fullfile(dirFormat, sprintf('%s_wrench.csv', dirFormat(15:end))));
        data.(datadir).(datatime).xDes = zeros(length(data.(datadir).(datatime).Time), 3);
        data.(datadir).(datatime).xdDes = load(fullfile(dirFormat, sprintf('%s_desiredEndEffectorVelocity.csv',  dirFormat(15:end))));
        data.(datadir).(datatime).xAct = zeros(length(data.(datadir).(datatime).Time), 3);
        data.(datadir).(datatime).xdAct = zeros(length(data.(datadir).(datatime).Time), 3);
        data.(datadir).(datatime).xRec = zeros(length(data.(datadir).(datatime).Time), 3);
        data.(datadir).(datatime).xdRec = zeros(length(data.(datadir).(datatime).Time), 3);

        for i = 1:length(data.(datadir).(datatime).Time)

            [data.(datadir).(datatime).xAct(i, :), ~] = forwardKinematics(data.(datadir).(datatime).JointPosition(i, :));
            [data.(datadir).(datatime).xDes(i, :), ~] = forwardKinematics(data.(datadir).(datatime).DesiredJointPosition(i,:));
            
        end
        temp = data.(datadir).(datatime).xAct(:, 1);
        data.(datadir).(datatime).xAct(:, 1) = data.(datadir).(datatime).xAct(:, 3);
        data.(datadir).(datatime).xAct(:, 3) = -temp;
        temp = data.(datadir).(datatime).xDes(:, 1);
        data.(datadir).(datatime).xDes(:, 1) = data.(datadir).(datatime).xDes(:, 3);
        data.(datadir).(datatime).xDes(:, 3) = -temp;
        
        for i = 1:length(data.(datadir).(datatime).xAct) - 1
            data.(datadir).(datatime).xdAct(i, :) = (data.(datadir).(datatime).xAct(i + 1, :) - data.(datadir).(datatime).xAct(i, :)) /...
                (data.(datadir).(datatime).Time(i + 1) - data.(datadir).(datatime).Time(i));
        end

        % Calculate desired path and derivatives
        radius = 0.06;
        line_length = 0.2;
        alpha = (2 * line_length) / (radius * pi) + 1;
        sspace = linspace(0, alpha + 1, length(data.(datadir).(datatime).Time));

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




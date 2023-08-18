% Choose directory
rootdir = 'Flat_R0.060000/Flat_R0.060000_T%.6f_1';

timeFrames = [10, 8, 6, 4, 3];
numFrames = length(timeFrames);

data = struct();

for index = 1:numFrames
    timeFrame = timeFrames(index);
    fprintf('Processing time frame %d...\n', timeFrame);

    dirFormat = sprintf(rootdir, timeFrame);

    if timeFrame == 10
        numFiles = 41;
    else
        numFiles = 40;
    end

    % Load data
    dataName = sprintf('Data%d', timeFrames(index));
    data.(dataName).DesiredEndEffectorVelocity = load(fullfile(dirFormat, sprintf('%s_desiredEndEffectorVelocity.csv',  dirFormat(15:end))));
    data.(dataName).DesiredJointPosition = load(fullfile(dirFormat, sprintf('%s_desiredJointPosition.csv', dirFormat(15:end))));
    data.(dataName).JointPosition = load(fullfile(dirFormat, sprintf('%s_jointPosition.csv', dirFormat(15:end))));
    data.(dataName).JointVelocity = load(fullfile(dirFormat, sprintf('%s_jointVelocity.csv', dirFormat(15:end))));
    data.(dataName).Time = load(fullfile(dirFormat, sprintf('%s_simulationTime.csv', dirFormat(15:end))));
    data.(dataName).Force = load(fullfile(dirFormat, sprintf('%s_wrench.csv', dirFormat(15:end))));
    data.(dataName).x = zeros(length(data.(dataName).Time), 3);
    data.(dataName).xDot = zeros(length(data.(dataName).Time) - 1, 3);
end

% Rest of your code...

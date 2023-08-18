% Choose directory
rootdir = ['FCat_R0.050000/Flat_R0.050000_T%.6f_2',...
           'FCat_R0.055000/Flat_R0.055000_T%.6f_2',...
           'FCat_R0.060000/Flat_R0.060000_T%.6f_2',...
           'RCmp_R0.050000/Ramp_R0.050000_T%.6f_2',...
           'RCmp_R0.055000/Ramp_R0.055000_T%.6f_2',...
           'RCmp_R0.060000/Ramp_R0.060000_T%.6f_2',...
           'FAir_R0.055000/Fair_R0.055000_T%.6f_2',...
           'RAir_R0.055000/Rair_R0.055000_T%.6f_2'];

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
   
       % Load data
       datadir = sprintf('%s%s%s%s',rootdir(1+37*(directory-1)),rootdir(2+37*(directory-1)),rootdir(10+37*(directory-1)),rootdir(11+37*(directory-1)));
       datatime = sprintf('T%d', timeFrames(index));

%        data.(datadir).(datatime).DesiredEndEffectorPosition = load(fullfile(dirFormat, sprintf('%s_desiredEndEffectorPosition.csv',  dirFormat(15:end))));
       data.(datadir).(datatime).DesiredEndEffectorVelocity = load(fullfile(dirFormat, sprintf('%s_desiredEndEffectorVelocity.csv',  dirFormat(15:end))));
       data.(datadir).(datatime).DesiredJointPosition = load(fullfile(dirFormat, sprintf('%s_desiredJointPosition.csv', dirFormat(15:end))));
       data.(datadir).(datatime).JointPosition = load(fullfile(dirFormat, sprintf('%s_jointPosition.csv', dirFormat(15:end))));
       data.(datadir).(datatime).JointVelocity = load(fullfile(dirFormat, sprintf('%s_jointVelocity.csv', dirFormat(15:end))));
       data.(datadir).(datatime).Time = load(fullfile(dirFormat, sprintf('%s_simulationTime.csv', dirFormat(15:end))));
       data.(datadir).(datatime).Force = load(fullfile(dirFormat, sprintf('%s_wrench.csv', dirFormat(15:end))));
       data.(datadir).(datatime).xDes = zeros(length(data.(datadir).(datatime).Time), 3);
       data.(datadir).(datatime).xdDes = zeros(length(data.(datadir).(datatime).Time), 3);
       data.(datadir).(datatime).xAct = zeros(length(data.(datadir).(datatime).Time), 3);
       data.(datadir).(datatime).xdAct = zeros(length(data.(datadir).(datatime).Time), 3);
       data.(datadir).(datatime).xRec = zeros(length(data.(datadir).(datatime).Time), 3);
       data.(datadir).(datatime).xdRec = zeros(length(data.(datadir).(datatime).Time), 3);

       for i = 1:length(data.(datadir).(datatime).Time)

          [data.(datadir).(datatime).xAct(i, :), ~] = forwardKinematics(data.(datadir).(datatime).JointPosition(i, :));
          [data.(datadir).(datatime).xDes(i, :), ~] = forwardKinematics(data.(datadir).(datatime).DesiredJointPosition(i,:));

       end

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


plot(0.5,mean(data.FC50.T10.Force(4800:5200,3)),'k*',0.55,mean(data.FC55.T10.Force(4800:5200,3)),'ko',0.6,mean(data.FC60.T10.Force(4800:5200,3)),'ks' ...
    ,0.5,mean(data.FC50.T8.Force(3800:4200,3)),'k*',0.55,mean(data.FC55.T8.Force(3800:4200,3)),'ko',0.6,mean(data.FC60.T8.Force(3800:4200,3)),'ks' ...
    ,0.5,mean(data.FC50.T6.Force(2800:3200,3)),'k*',0.55,mean(data.FC55.T6.Force(2800:3200,3)),'ko',0.6,mean(data.FC60.T6.Force(2800:3200,3)),'ks' ...
    ,0.5,mean(data.FC50.T4.Force(1800:2200,3)),'k*',0.55,mean(data.FC55.T4.Force(1800:2200,3)),'ko',0.6,mean(data.FC60.T4.Force(1800:2200,3)),'ks' ...
    ,0.5,mean(data.FC50.T3.Force(1300:1700,3)),'k*',0.55,mean(data.FC55.T3.Force(1300:1700,3)),'ko',0.6,mean(data.FC60.T3.Force(1300:1700,3)),'ks')

plot(data.FC60.T10.Time(:,1),data.FC60.T10.Force(:,1),'*'...
   ,data.FC60.T8.Time(:,1),data.FC60.T8.Force(:,1),'*'...
   ,data.FC60.T6.Time(:,1),data.FC60.T6.Force(:,1),'*'...
   ,data.FC60.T4.Time(:,1),data.FC60.T4.Force(:,1),'*'...
   ,data.FC60.T3.Time(:,1),data.FC60.T3.Force(:,1),'*')
%    % Plotting
%    figure(1)
%    hold on; grid on
%    plot(data.(dataName).x(:, 3), -data.(dataName).x(:, 1),'.')
%    if timeFrame == 3
%       plot(P_z + data.(dataName).x(1, 3) + radius, P_x - data.(dataName).x(1, 1), 'LineWidth', 2.0)
%    end
%    xlabel('z direction (m)')
%    ylabel('x direction (m)')
%    title('Desired and Actual Position')
%    axis equal
%    legend('tF=3', 'tF=4', 'tF=6', 'tF=8', 'tF=10', 'Desired Path')
% 
%    figure(2)
%    hold on; grid on;
%    plot(data.(dataName).Time(:, 1), data.(dataName).Force(:, 3), '*', data.(dataName).Time(:,1), data.(dataName).xDot(:, 3), '-d')
%    xlabel('Time (sec)')
%    legend('Force-t_F=3', 'Velocity-t_F=3', 'Force-t_F=4', 'Velocity-t_F=4', 'Force-t_F=6', 'Velocity-t_F=6', ...
%       'Force-t_F=8', 'Velocity-t_F=8', 'Force-t_F=10', 'Velocity-t_F=10')
% 
% end
% 

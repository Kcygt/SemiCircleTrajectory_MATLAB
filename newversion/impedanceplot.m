% figure(1)
% hold on; grid on;
% plot(0.05, mean(data.FC50.T3.Force(1200:1400),3),'*')
% plot(0.05, mean(data.FC50.T4.Force(1800:2400),3),'+')
% plot(0.05, mean(data.FC50.T6.Force(mean(2800:3200),3),'^'))
% plot(0.05, mean(data.FC50.T8.Force(mean(3800:4200),3),'square'))
% plot(0.05, mean(data.FC50.T10.Force(mean(4800:5200),3),'p'))
% % legend('time=3','time=4','time=5','time=8','time=10')
% xlabel('Radius of half hippodrome(m)')
% ylabel('Impedance Value')
% title('Flat surface Impedance')
% 
% plot(0.055, mean(data.FC55.T3.Force(mean(1200:1400),3),'*'))
% plot(0.055, mean(data.FC55.T4.Force(mean(1800:2400),3),'+'))
% plot(0.055, mean(data.FC55.T6.Force(mean(2800:3200),3),'^'))
% plot(0.055, mean(data.FC55.T8.Force(mean(3800:4200),3),'square'))
% plot(0.055, mean(data.FC55.T10.Force(mean(4800:5200),3),'p'))
% 
% plot(0.06, mean(data.FC60.T3.Force(mean(1200:1400),3),'*'))
% plot(0.06, mean(data.FC60.T4.Force(mean(1800:2400),3),'+'))
% plot(0.06, mean(data.FC60.T6.Force(mean(2800:3200),3),'^'))
% plot(0.06, mean(data.FC60.T8.Force(mean(3800:4200),3),'square'))
% plot(0.06, mean(data.FC60.T10.Force(mean(4800:5200),3),'p'))
% 
% figure(2)
% hold on; grid on;
% plot(0.05, mean(data.RC50.T3.Force(mean(1200:1400),3),'*'))
% plot(0.05, mean(data.RC50.T4.Force(mean(1600:2600),3),'+'))
% plot(0.05, mean(data.RC50.T6.Force(mean(2400:3800),3),'^'))
% plot(0.05, mean(data.RC50.T8.Force(mean(3800:5200),3),'square'))
% plot(0.05, mean(data.RC50.T10.Force(mean(3800:6200),3),'p'))
% xlabel('Radius of half hippodrome(m)')
% ylabel('Impedance Value')
% title('Ramp surface Impedance')
% 
% plot(0.055, mean(data.RC55.T3.Force(mean(1200:1400),3),'*'))
% plot(0.055, mean(data.RC55.T4.Force(mean(1800:2400),3),'+'))
% plot(0.055, mean(data.RC55.T6.Force(mean(2800:3200),3),'^'))
% plot(0.055, mean(data.RC55.T8.Force(mean(3800:4200),3),'square'))
% plot(0.055, mean(data.RC55.T10.Force(mean(3800:6200),3),'p'))
% 
% plot(0.06, mean(data.RC60.T3.Force(1300:1400),3),'*')
% plot(0.06, mean(data.RC60.T4.Force(1800:2200),3),'+')
% plot(0.06, mean(data.RC60.T6.Force(2800:3200),3),'^')
% plot(0.06, mean(data.RC60.T8.Force(3800:4200),3),'square')
% plot(0.06, mean(data.RC60.T10.Force(4800:5200),3),'p')
% legend('time=3','time=4','time=5','time=8','time=10')
% 
% 
% 

% Plotting parameters
% Plotting parameters
% Define radii and time indices
radii = [0.05, 0.055, 0.06];
timeIndices = {'T3', 'T4', 'T6', 'T8', 'T10'};
timeLabels = {'time=3', 'time=4', 'time=5', 'time=8', 'time=10'};
timeRanges = {[1200, 1300], [1300, 1500], [2000, 2200], [3000, 3300], [3200, 3600]};

figure(1);
hold on;
grid on;

for i = 1:length(radii)
    for j = 1:length(timeIndices)
        dataField = sprintf('FC%.0f', radii(i) * 1000);
        plot(radii(i), mean(data.(dataField).(timeIndices{j}).Force(timeRanges{j}, 3)), getMarker(j));
    end
end

xlabel('Radius of half hippodrome (m)');
ylabel('Impedance Value');
title('Flat surface Impedance');
legend(timeLabels, 'Location', 'best');

figure(2);
hold on;
grid on;

for i = 1:length(radii)
    for j = 1:length(timeIndices)
        dataField = sprintf('RC%.0f', radii(i) * 1000);
        plot(radii(i), mean(data.(dataField).(timeIndices{j}).Force(timeRanges{j}, 3)), getMarker(j));
    end
end

xlabel('Radius of half hippodrome (m)');
ylabel('Impedance Value');
title('Ramp surface Impedance');
legend(timeLabels, 'Location', 'best');

function marker = getMarker(index)
    markers = {'*', '+', '^', 'square', 'p'};
    marker = markers{index};
end


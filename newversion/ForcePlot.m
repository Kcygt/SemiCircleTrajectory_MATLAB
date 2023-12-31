close all
% 
% 
% figure(1)
% hold on; grid on;
% plot(data.FC50.T3.Time,data.FC50.T3.Force(:,3))
% plot(data.FC50.T4.Time,data.FC50.T4.Force(:,3))
% plot(data.FC50.T6.Time,data.FC50.T6.Force(:,3))
% plot(data.FC50.T8.Time,data.FC50.T8.Force(:,3))
% plot(data.FC50.T10.Time,data.FC50.T10.Force(:,3))
% xlabel('Time(s)')
% ylabel('Force(N)')
% title('Radius = 5cm for flat surface')
% legend('Time=3','Time=4','Time=6','Time=8','Time=10')
% figure(2)
% hold on; grid on;
% 
% plot(data.FC55.T3.Time,data.FC55.T3.Force(:,3))
% plot(data.FC55.T4.Time,data.FC55.T4.Force(:,3))
% plot(data.FC55.T6.Time,data.FC55.T6.Force(:,3))
% plot(data.FC55.T8.Time,data.FC55.T8.Force(:,3))
% plot(data.FC55.T10.Time,data.FC55.T10.Force(:,3))
% xlabel('Time(s)')
% ylabel('Force(N)')
% title('Radius = 5.5cm for flat surface')
% legend('Time=3','Time=4','Time=6','Time=8','Time=10')
% 
% 
% figure(3)
% hold on; grid on;
% 
% plot(data.FC60.T3.Time,data.FC60.T3.Force(:,3))
% plot(data.FC60.T4.Time,data.FC60.T4.Force(:,3))
% plot(data.FC60.T6.Time,data.FC60.T6.Force(:,3))
% plot(data.FC60.T8.Time,data.FC60.T8.Force(:,3))
% plot(data.FC60.T10.Time,data.FC60.T10.Force(:,3))
% xlabel('Time(s)')
% ylabel('Force(N)')
% title('Radius = 6cm for flat surface')
% legend('Time=3','Time=4','Time=6','Time=8','Time=10')
% 
% 
% figure(4)
% hold on; grid on;
% 
% plot(data.RC50.T3.Time,data.RC50.T3.Force(:,3))
% plot(data.RC50.T4.Time,data.RC50.T4.Force(:,3))
% plot(data.RC50.T6.Time,data.RC50.T6.Force(:,3))
% plot(data.RC50.T8.Time,data.RC50.T8.Force(:,3))
% plot(data.RC50.T10.Time,data.RC50.T10.Force(:,3))
% xlabel('Time(s)')
% ylabel('Force(N)')
% title('Radius = 5cm for Ramp surface')
% legend('Time=3','Time=4','Time=6','Time=8','Time=10')
% 
% figure(5)
% hold on; grid on;
% 
% plot(data.RC55.T3.Time,data.RC55.T3.Force(:,3))
% plot(data.RC55.T4.Time,data.RC55.T4.Force(:,3))
% plot(data.RC55.T6.Time,data.RC55.T6.Force(:,3))
% plot(data.RC55.T8.Time,data.RC55.T8.Force(:,3))
% plot(data.RC55.T10.Time,data.RC55.T10.Force(:,3))
% xlabel('Time(s)')
% ylabel('Force(N)')
% title('Radius = 5.5cm for Ramp surface')
% legend('Time=3','Time=4','Time=6','Time=8','Time=10')
% 
% 
% figure(6)
% hold on; grid on;
% 
% plot(data.RC60.T3.Time,data.RC60.T3.Force(:,3))
% plot(data.RC60.T4.Time,data.RC60.T4.Force(:,3))
% plot(data.RC60.T6.Time,data.RC60.T6.Force(:,3))
% plot(data.RC60.T8.Time,data.RC60.T8.Force(:,3))
% plot(data.RC60.T10.Time,data.RC60.T10.Force(:,3))
% xlabel('Time(s)')
% ylabel('Force(N)')
% title('Radius = 6cm for Ramp surface')
% legend('Time=3','Time=4','Time=6','Time=8','Time=10')
% 
% 
% 
% figure(7)
% hold on; grid on;
% xlabel('Time(s)')
% ylabel('Force(N)')
% plot(data.FC50.T10.Time,data.FC50.T10.Force(:,3))
% plot(data.FC55.T10.Time,data.FC55.T10.Force(:,3))
% plot(data.FC60.T10.Time,data.FC60.T10.Force(:,3))
% title('Flat surface for difference radius value')
% legend('Radius = 5','Radius= 5.5','Radius= 6cm')
% 
% 
% figure(8)
% hold on; grid on;
% plot(data.FC55.T10.Time,data.FC55.T10.Force(:,1))
% plot(data.FC55.T8.Time,data.FC55.T8.Force(:,1))
% plot(data.FC55.T6.Time,data.FC55.T6.Force(:,1))
% plot(data.FC55.T4.Time,data.FC55.T4.Force(:,1))
% plot(data.FC55.T3.Time,data.FC55.T3.Force(:,1))


figure(9)
hold on; grid on;
t3_50 = mean(data.FC50.T3.Force(1000:1300,1));
t6_50 = mean(data.FC50.T6.Force(1600:2500,1));
t10_50 = mean(data.FC50.T10.Force(2400:7000,1));
plot([3  6 10],[t3_50  t6_50  t10_50],'d','MarkerFaceColor','red')
xlabel("Time in Action(sec)")
ylabel("Mean fraction force(N)")
title("Different robot velocity for Radius 5 cm")

figure(10)
hold on; grid on;
t3_55 = mean(data.FC55.T3.Force(1000:1300,1));
t6_55 = mean(data.FC55.T6.Force(1600:2500,1));
t10_55 = mean(data.FC55.T10.Force(2600:6000,1));
plot([3  6  10],[t3_55  t6_55  t10_55],'d','MarkerFaceColor','red')
xlabel("Time in Action(sec)")
ylabel("Mean fraction force(N)")
title("Different robot velocity for Radius 5.5 cm")

figure(11)
hold on; grid on;
x1 = data.FC60.T3.xdAct(1000:1600,1);
x2 = data.FC60.T6.xdAct(1600:2500,1);
x3 = data.FC60.T10.xdAct(3000:5500,1);
t3_60 = -data.FC60.T3.Force(1000:1600,1);
t6_60 = -data.FC60.T6.Force(1600:2500,1);
t10_60 = -data.FC60.T10.Force(3000:5500,1);
% boxplot([3  6  10],[t3_60  t6_60  t10_60],'d','MarkerFaceColor','red')
% boxplot(t3_60,t6_60,t10_60,"BoxStyle","outline","Labels",{""})
scatter(x1,t3_60,".")
scatter(x2,t6_60,".")
scatter(x3,t10_60,".")
legend("Task Duration = 3 secs","Task Duration = 6 secs","Task Duration = 10 secs")
xlabel("Velocity(m/s)")
ylabel("Friction force(N)")
title("Radius 5 cm")



% figure(12)
% hold on; grid on;
% plot(data.FC60.T3.Time,data.FC60.T3.Force(:,1))
% plot(data.FC60.T4.Time,data.FC60.T4.Force(:,1))
% plot(data.FC60.T6.Time,data.FC60.T6.Force(:,1))
% plot(data.FC60.T8.Time,data.FC60.T8.Force(:,1))
% plot(data.FC60.T10.Time,data.FC60.T10.Force(:,1))


figure(8)
hold on; grid on;
plot(data.FC50.T10.Time(3000:5500),data.FC50.T10.Force(3000:5500,3))
plot(data.FC55.T10.Time(3000:5500),data.FC55.T10.Force(3000:5500,3))
plot(data.FC60.T10.Time(3000:5500),data.FC60.T10.Force(3000:5500,3))
title("Contact Force")

figure(9)
hold on; grid on;
plot(data.FC60.T10.Time(3000:5500),data.FC60.T10.Force(3000:5500,1))
plot(data.FC60.T6.Time(3000:5500),data.FC60.T6.Force(3000:5500,1))
plot(data.FC60.T3.Time(3000:5500),data.FC60.T3.Force(3000:5500,1))
title("Friction Force")



figure(10)
hold on; grid on;

% Combine the data into a single matrix
allData = [-data.FC50.T10.Force(2200:5000,1); -data.FC55.T10.Force(2200:5000,1); -data.FC60.T10.Force(2200:5000,1)];

% Create a grouping variable
groupLabels = repelem({'5cm', '5.5cm', '6.0cm'}, [numel(data.FC50.T10.Force(2200:5000,1)), numel(data.FC55.T10.Force(2200:5000,1)), numel(data.FC60.T10.Force(2200:5000,1))]);

% Plot the boxplot with labels
boxplot(allData, groupLabels, 'Labels', {'5cm', '5.5cm', '6.0cm'})

% Set axis labels
xlabel('Radius')
ylabel('Friction Force(N)')
title("Task Duration = 10secs")




figure(11)
hold on; grid on;

% Combine the data into a single matrix
allData = [-data.FC50.T6.Force(1600:2500,1); -data.FC55.T6.Force(1600:2500,1); -data.FC60.T6.Force(1600:2500,1)];

% Create a grouping variable
groupLabels = repelem({'5cm', '5.5cm', '6.0cm'}, [numel(data.FC50.T6.Force(1600:2500,1)), numel(data.FC55.T6.Force(1600:2500,1)), numel(data.FC60.T6.Force(1600:2500,1))]);

% Plot the boxplot with labels
boxplot(allData, groupLabels, 'Labels', {'5cm', '5.5cm', '6.0cm'})

% Set axis labels
xlabel('Radius')
ylabel('Friction Force(N)')
title("Task Duration = 6 secs")



figure(12)
hold on; grid on;

% Combine the data into a single matrix
allData = [-data.FC50.T3.Force(1000:1600,1); -data.FC55.T3.Force(1000:1600,1); -data.FC60.T3.Force(1000:1600,1)];

% Create a grouping variable
groupLabels = repelem({'5cm', '5.5cm', '6.0cm'}, [numel(data.FC50.T3.Force(1000:1600,1)), numel(data.FC55.T3.Force(1000:1600,1)), numel(data.FC60.T3.Force(1000:1600,1))]);

% Plot the boxplot with labels
boxplot(allData, groupLabels, 'Labels', {'5cm', '5.5cm', '6.0cm'})

% Set axis labels
xlabel('Radius')
ylabel('Friction Force(N)')
title("Task Duration = 3 secs")
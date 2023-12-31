figure(1)
hold on; grid on;

plot(data.FC50.T3.Time,data.FC50.T3.Force(:,1),data.FC50.T3.Time,data.FC50.T3.xdAct(:,3))
plot(data.FC50.T10.Time,data.FC50.T10.Force(:,1),data.FC50.T10.Time,data.FC50.T10.xdAct(:,3))

xlabel('Time(s)')
ylabel('Force(N) - Velocity(m/s)')
title('Radius = 5cm for flat surface')
legend('Force in x axes','Velocity in z axes')


figure(2)
hold on; grid on;

plot(data.FC55.T3.Time,data.FC55.T3.Force(:,1),data.FC55.T3.Time,data.FC55.T3.xdAct(:,3))
plot(data.FC55.T10.Time,data.FC55.T10.Force(:,1),data.FC55.T10.Time,data.FC55.T10.xdAct(:,3))

xlabel('Time(s)')
ylabel('Force(N) - Velocity(m/s)')
title('Radius = 5.5cm for flat surface')
legend('Force in x axes','Velocity in z axes')

figure(3)
hold on; grid on;

plot(data.FC60.T3.Time,data.FC60.T3.Force(:,1),data.FC60.T3.Time,data.FC60.T3.xdAct(:,3))
plot(data.FC60.T10.Time,data.FC60.T10.Force(:,1),data.FC60.T10.Time,data.FC60.T10.xdAct(:,3))

xlabel('Time(s)')
ylabel('Force(N) - Velocity(m/s)')
title('Radius = 6.0 cm for flat surface')
legend('Force in x axes','Velocity in z axes')
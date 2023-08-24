figure(1)
hold on; grid on;

plot(data.FC50.T3.Time,data.FC50.T3.Force(:,3))
plot(data.FC50.T4.Time,data.FC50.T4.Force(:,3))
plot(data.FC50.T6.Time,data.FC50.T6.Force(:,3))
plot(data.FC50.T8.Time,data.FC50.T8.Force(:,3))
plot(data.FC50.T10.Time,data.FC50.T10.Force(:,3))
xlabel('Time(s)')
ylabel('Force(N)')
title('Radius = 5cm for flat surface')
legend('Time=3','Time=4','Time=6','Time=8','Time=10')
figure(2)
hold on; grid on;

plot(data.FC55.T3.Time,data.FC55.T3.Force(:,3))
plot(data.FC55.T4.Time,data.FC55.T4.Force(:,3))
plot(data.FC55.T6.Time,data.FC55.T6.Force(:,3))
plot(data.FC55.T8.Time,data.FC55.T8.Force(:,3))
plot(data.FC55.T10.Time,data.FC55.T10.Force(:,3))
xlabel('Time(s)')
ylabel('Force(N)')
title('Radius = 5.5cm for flat surface')
legend('Time=3','Time=4','Time=6','Time=8','Time=10')


figure(3)
hold on; grid on;

plot(data.FC60.T3.Time,data.FC60.T3.Force(:,3))
plot(data.FC60.T4.Time,data.FC60.T4.Force(:,3))
plot(data.FC60.T6.Time,data.FC60.T6.Force(:,3))
plot(data.FC60.T8.Time,data.FC60.T8.Force(:,3))
plot(data.FC60.T10.Time,data.FC60.T10.Force(:,3))
xlabel('Time(s)')
ylabel('Force(N)')
title('Radius = 6cm for flat surface')
legend('Time=3','Time=4','Time=6','Time=8','Time=10')


figure(4)
hold on; grid on;

plot(data.RC50.T3.Time,data.RC50.T3.Force(:,3))
plot(data.RC50.T4.Time,data.RC50.T4.Force(:,3))
plot(data.RC50.T6.Time,data.RC50.T6.Force(:,3))
plot(data.RC50.T8.Time,data.RC50.T8.Force(:,3))
plot(data.RC50.T10.Time,data.RC50.T10.Force(:,3))
xlabel('Time(s)')
ylabel('Force(N)')
title('Radius = 5cm for Ramp surface')
legend('Time=3','Time=4','Time=6','Time=8','Time=10')

figure(5)
hold on; grid on;

plot(data.RC55.T3.Time,data.RC55.T3.Force(:,3))
plot(data.RC55.T4.Time,data.RC55.T4.Force(:,3))
plot(data.RC55.T6.Time,data.RC55.T6.Force(:,3))
plot(data.RC55.T8.Time,data.RC55.T8.Force(:,3))
plot(data.RC55.T10.Time,data.RC55.T10.Force(:,3))
xlabel('Time(s)')
ylabel('Force(N)')
title('Radius = 5.5cm for Ramp surface')
legend('Time=3','Time=4','Time=6','Time=8','Time=10')


figure(6)
hold on; grid on;

plot(data.RC60.T3.Time,data.RC60.T3.Force(:,3))
plot(data.RC60.T4.Time,data.RC60.T4.Force(:,3))
plot(data.RC60.T6.Time,data.RC60.T6.Force(:,3))
plot(data.RC60.T8.Time,data.RC60.T8.Force(:,3))
plot(data.RC60.T10.Time,data.RC60.T10.Force(:,3))
xlabel('Time(s)')
ylabel('Force(N)')
title('Radius = 6cm for Ramp surface')
legend('Time=3','Time=4','Time=6','Time=8','Time=10')



figure(7)
hold on; grid on;
xlabel('Time(s)')
ylabel('Force(N)')
plot(data.RC50.T3.Time,data.RC50.T3.Force(:,3))
plot(data.RC55.T3.Time,data.RC55.T3.Force(:,3))
plot(data.RC60.T3.Time,data.RC60.T3.Force(:,3))
title('Ramp surface for difference radius value')
legend('Radius= 5cm','Radius= 5.5cm','Radius= 6cm')
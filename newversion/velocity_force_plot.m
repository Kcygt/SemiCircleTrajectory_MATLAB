figure(1)
hold on; grid on;
plot(mean(data.FC50.T3.xdAct(1100:1900,1)), mean(data.FC50.T3.Force(1100:1900,3)),'*')
plot(mean(data.FC50.T4.xdAct(1100:2700,1)), mean(data.FC50.T4.Force(1100:2700,3)),'+')
plot(mean(data.FC50.T6.xdAct(1500:3900,1)), mean(data.FC50.T6.Force(1500:3900,3)),'^')
plot(mean(data.FC50.T8.xdAct(2000:5400,1)), mean(data.FC50.T8.Force(2000:5400,3)),'square')
plot(mean(data.FC50.T10.xdAct(2500:7000,1)), mean(data.FC50.T10.Force(2500:7000,3)),'p')
% legend('time=3','time=4','time=5','time=8','time=10')
xlabel('Average Velocity(m/s)')
ylabel('Average Force(N)')
title('FLAT surface, Radius = 5cm')

figure(2)
hold on; grid on;
plot(mean(data.FC55.T3.xdAct(1100:1900,1)), mean(data.FC55.T3.Force(1100:1900,3)),'*')
plot(mean(data.FC55.T4.xdAct(1100:2700,1)), mean(data.FC55.T4.Force(1100:2700,3)),'+')
plot(mean(data.FC55.T6.xdAct(1500:3900,1)), mean(data.FC55.T6.Force(1500:3900,3)),'^')
plot(mean(data.FC55.T8.xdAct(2000:5400,1)), mean(data.FC55.T8.Force(2000:5400,3)),'square')
plot(mean(data.FC55.T10.xdAct(2500:7000,1)), mean(data.FC55.T10.Force(2500:7000,3)),'p')
% legend('time=3','time=4','time=5','time=8','time=10')
xlabel('Average Velocity(m/s)')
ylabel('Average Force(N)')
title('FLAT surface, Radius = 5.5 cm')

figure(3)
hold on; grid on;
plot(mean(data.FC60.T3.xdAct(1100:1900,1)), mean(data.FC60.T3.Force(1100:1900,3)),'*')
plot(mean(data.FC60.T4.xdAct(1100:2700,1)), mean(data.FC60.T4.Force(1100:2700,3)),'+')
plot(mean(data.FC60.T6.xdAct(1500:3900,1)), mean(data.FC60.T6.Force(1500:3900,3)),'^')
plot(mean(data.FC60.T8.xdAct(2000:5400,1)), mean(data.FC60.T8.Force(2000:5400,3)),'square')
plot(mean(data.FC60.T10.xdAct(2500:7000,1)), mean(data.FC60.T10.Force(2500:7000,3)),'p')
% legend('time=3','time=4','time=5','time=8','time=10')
xlabel('Average Velocity(m/s)')
ylabel('Average Force(N)')
title('FLAT surface, Radius = 6 cm')


figure(4)
hold on; grid on;
plot(mean(data.RC50.T3.xdAct(1100:1900,1)), mean(data.RC50.T3.Force(1100:1900,3)),'*')
plot(mean(data.RC50.T4.xdAct(1100:2700,1)), mean(data.RC50.T4.Force(1100:2700,3)),'+')
plot(mean(data.RC50.T6.xdAct(1500:3900,1)), mean(data.RC50.T6.Force(1500:3900,3)),'^')
plot(mean(data.RC50.T8.xdAct(2000:5400,1)), mean(data.RC50.T8.Force(2000:5400,3)),'square')
plot(mean(data.RC50.T10.xdAct(2500:7000,1)), mean(data.RC50.T10.Force(2500:7000,3)),'p')
% legend('time=3','time=4','time=5','time=8','time=10')
xlabel('Average Velocity(m/s)')
ylabel('Average Force(N)')
title('RAMP surface, Radius = 5cm')


figure(5)
hold on; grid on;
plot(mean(data.RC55.T3.xdAct(1100:1900,1)), mean(data.RC55.T3.Force(1100:1900,3)),'*')
plot(mean(data.RC55.T4.xdAct(1100:2700,1)), mean(data.RC55.T4.Force(1100:2700,3)),'+')
plot(mean(data.RC55.T6.xdAct(1500:3900,1)), mean(data.RC55.T6.Force(1500:3900,3)),'^')
plot(mean(data.RC55.T8.xdAct(2000:5400,1)), mean(data.RC55.T8.Force(2000:5400,3)),'square')
plot(mean(data.RC55.T10.xdAct(2500:7000,1)), mean(data.RC55.T10.Force(2500:7000,3)),'p')
% legend('time=3','time=4','time=5','time=8','time=10')
xlabel('Average Velocity(m/s)')
ylabel('Average Force(N)')
title('RAMP surface, Radius = 5.5 cm')


figure(6)
hold on; grid on;
plot(mean(data.RC60.T3.xdAct(1100:1900,1)), mean(data.RC60.T3.Force(1100:1900,3)),'*')
plot(mean(data.RC60.T4.xdAct(1100:2700,1)), mean(data.RC60.T4.Force(1100:2700,3)),'+')
plot(mean(data.RC60.T6.xdAct(1500:3900,1)), mean(data.RC60.T6.Force(1500:3900,3)),'^')
plot(mean(data.RC60.T8.xdAct(2000:5400,1)), mean(data.RC60.T8.Force(2000:5400,3)),'square')
plot(mean(data.RC60.T10.xdAct(2500:7000,1)), mean(data.RC60.T10.Force(2500:7000,3)),'p')
% legend('time=3','time=4','time=5','time=8','time=10')
xlabel('Average Velocity(m/s)')
ylabel('Average Force(N)')
title('RAMP surface, Radius = 6 cm')

%%%%
figure(7)
hold on; grid on;
plot(mean(data.FC50.T3.xdAct(1100:1900,1)), std(data.FC50.T3.Force(1100:1900,3)),'*')
plot(mean(data.FC50.T4.xdAct(1100:2700,1)), std(data.FC50.T4.Force(1100:2700,3)),'+')
plot(mean(data.FC50.T6.xdAct(1500:3900,1)), std(data.FC50.T6.Force(1500:3900,3)),'^')
plot(mean(data.FC50.T8.xdAct(2000:5400,1)), std(data.FC50.T8.Force(2000:5400,3)),'square')
plot(mean(data.FC50.T10.xdAct(2500:7000,1)), std(data.FC50.T10.Force(2500:7000,3)),'p')
% legend('time=3','time=4','time=5','time=8','time=10')
xlabel('Average Velocity(m/s)')
ylabel('Standart Deviation Force(N)')
title('FLAT surface, Radius = 5cm')

figure(8)
hold on; grid on;
plot(mean(data.FC55.T3.xdAct(1100:1900,1)), std(data.FC55.T3.Force(1100:1900,3)),'*')
plot(mean(data.FC55.T4.xdAct(1100:2700,1)), std(data.FC55.T4.Force(1100:2700,3)),'+')
plot(mean(data.FC55.T6.xdAct(1500:3900,1)), std(data.FC55.T6.Force(1500:3900,3)),'^')
plot(mean(data.FC55.T8.xdAct(2000:5400,1)), std(data.FC55.T8.Force(2000:5400,3)),'square')
plot(mean(data.FC55.T10.xdAct(2500:7000,1)), std(data.FC55.T10.Force(2500:7000,3)),'p')
% legend('time=3','time=4','time=5','time=8','time=10')
xlabel('Average Velocity(m/s)')
ylabel('Standart Deviation Force(N)')
title('FLAT surface, Radius = 5.5 cm')

figure(9)
hold on; grid on;
plot(mean(data.FC60.T3.xdAct(1100:1900,1)), std(data.FC60.T3.Force(1100:1900,3)),'*')
plot(mean(data.FC60.T4.xdAct(1100:2700,1)), std(data.FC60.T4.Force(1100:2700,3)),'+')
plot(mean(data.FC60.T6.xdAct(1500:3900,1)), std(data.FC60.T6.Force(1500:3900,3)),'^')
plot(mean(data.FC60.T8.xdAct(2000:5400,1)), std(data.FC60.T8.Force(2000:5400,3)),'square')
plot(mean(data.FC60.T10.xdAct(2500:7000,1)), std(data.FC60.T10.Force(2500:7000,3)),'p')
% legend('time=3','time=4','time=5','time=8','time=10')
xlabel('Average Velocity(m/s)')
ylabel('Standart Deviation Force(N)')
title('FLAT surface, Radius = 6 cm')


figure(10)
hold on; grid on;
plot(mean(data.RC50.T3.xdAct(1100:1900,1)), std(data.RC50.T3.Force(1100:1900,3)),'*')
plot(mean(data.RC50.T4.xdAct(1100:2700,1)), std(data.RC50.T4.Force(1100:2700,3)),'+')
plot(mean(data.RC50.T6.xdAct(1500:3900,1)), std(data.RC50.T6.Force(1500:3900,3)),'^')
plot(mean(data.RC50.T8.xdAct(2000:5400,1)), std(data.RC50.T8.Force(2000:5400,3)),'square')
plot(mean(data.RC50.T10.xdAct(2500:7000,1)), std(data.RC50.T10.Force(2500:7000,3)),'p')
% legend('time=3','time=4','time=5','time=8','time=10')
xlabel('Average Velocity(m/s)')
ylabel('Standart Deviation Force(N)')
title('RAMP surface, Radius = 5cm')


figure(11)
hold on; grid on;
plot(mean(data.RC55.T3.xdAct(1100:1900,1)), std(data.RC55.T3.Force(1100:1900,3)),'*')
plot(mean(data.RC55.T4.xdAct(1100:2700,1)), std(data.RC55.T4.Force(1100:2700,3)),'+')
plot(mean(data.RC55.T6.xdAct(1500:3900,1)), std(data.RC55.T6.Force(1500:3900,3)),'^')
plot(mean(data.RC55.T8.xdAct(2000:5400,1)), std(data.RC55.T8.Force(2000:5400,3)),'square')
plot(mean(data.RC55.T10.xdAct(2500:7000,1)), std(data.RC55.T10.Force(2500:7000,3)),'p')
% legend('time=3','time=4','time=5','time=8','time=10')
xlabel('Average Velocity(m/s)')
ylabel('Standart Deviation Force(N)')
title('RAMP surface, Radius = 5.5 cm')


figure(12)
hold on; grid on;
plot(mean(data.RC60.T3.xdAct(1100:1900,1)), std(data.RC60.T3.Force(1100:1900,3)),'*')
plot(mean(data.RC60.T4.xdAct(1100:2700,1)), std(data.RC60.T4.Force(1100:2700,3)),'+')
plot(mean(data.RC60.T6.xdAct(1500:3900,1)), std(data.RC60.T6.Force(1500:3900,3)),'^')
plot(mean(data.RC60.T8.xdAct(2000:5400,1)), std(data.RC60.T8.Force(2000:5400,3)),'square')
plot(mean(data.RC60.T10.xdAct(2500:7000,1)), std(data.RC60.T10.Force(2500:7000,3)),'p')
% legend('time=3','time=4','time=5','time=8','time=10')
xlabel('Average Velocity(m/s)')
ylabel('Standart Deviation Force(N)')
title('RAMP surface, Radius = 6 cm')

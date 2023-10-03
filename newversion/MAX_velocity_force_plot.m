figure(1)
hold on; grid on;
plot(max(data.FC50.T3.xdAct(1200:1400,3)), min(data.FC50.T3.Force(1200:1400,3)),'*')
plot(max(data.FC50.T4.xdAct(1800:2400,3)), min(data.FC50.T4.Force(1800:2400,3)),'+')
plot(max(data.FC50.T6.xdAct(2800:3200,3)), min(data.FC50.T6.Force(2800:3200,3)),'^')
plot(max(data.FC50.T8.xdAct(3800:4200,3)), min(data.FC50.T8.Force(3800:4200,3)),'square')
plot(max(data.FC50.T10.xdAct(4800:5200,3)), min(data.FC50.T10.Force(4800:5200,3)),'p')
% legend('time=3','time=4','time=5','time=8','time=10')
xlabel('Average Velocity(m/s)')
ylabel('Average Force(N)')
title('FLAT surface, Radius = 5cm')

figure(2)
hold on; grid on;
plot(max(data.FC55.T3.xdAct(1200:1400,3)), min(data.FC55.T3.Force(1200:1400,3)),'*')
plot(max(data.FC55.T4.xdAct(1800:2400,3)), min(data.FC55.T4.Force(1800:2400,3)),'+')
plot(max(data.FC55.T6.xdAct(2800:3200,3)), min(data.FC55.T6.Force(2800:3200,3)),'^')
plot(max(data.FC55.T8.xdAct(3800:4200,3)), min(data.FC55.T8.Force(3800:4200,3)),'square')
plot(max(data.FC55.T10.xdAct(4800:5200,3)), min(data.FC55.T10.Force(4800:5200,3)),'p')
% legend('time=3','time=4','time=5','time=8','time=10')
xlabel('Average Velocity(m/s)')
ylabel('Average Force(N)')
title('FLAT surface, Radius = 5.5 cm')

figure(3)
hold on; grid on;
plot(max(data.FC60.T3.xdAct(1200:1400,3)), min(data.FC60.T3.Force(1200:1400,3)),'*')
plot(max(data.FC60.T4.xdAct(1800:2400,3)), min(data.FC60.T4.Force(1800:2400,3)),'+')
plot(max(data.FC60.T6.xdAct(2800:3200,3)), min(data.FC60.T6.Force(2800:3200,3)),'^')
plot(max(data.FC60.T8.xdAct(3800:4200,3)), min(data.FC60.T8.Force(3800:4200,3)),'square')
plot(max(data.FC60.T10.xdAct(4800:5200,3)), min(data.FC60.T10.Force(4800:5200,3)),'p')
% legend('time=3','time=4','time=5','time=8','time=10')
xlabel('Average Velocity(m/s)')
ylabel('Average Force(N)')
title('FLAT surface, Radius = 6 cm')


figure(4)
hold on; grid on;
plot(max(data.RC50.T3.xdAct(1200:1400,3)), min(data.RC50.T3.Force(1200:1400,3)),'*')
plot(max(data.RC50.T4.xdAct(1800:2400,3)), min(data.RC50.T4.Force(1800:2400,3)),'+')
plot(max(data.RC50.T6.xdAct(2800:3200,3)), min(data.RC50.T6.Force(2800:3200,3)),'^')
plot(max(data.RC50.T8.xdAct(3800:4200,3)), min(data.RC50.T8.Force(3800:4200,3)),'square')
plot(max(data.RC50.T10.xdAct(4800:5200,3)), min(data.RC50.T10.Force(4800:5200,3)),'p')
% legend('time=3','time=4','time=5','time=8','time=10')
xlabel('Average Velocity(m/s)')
ylabel('Average Force(N)')
title('RAMP surface, Radius = 5cm')


figure(5)
hold on; grid on;
plot(max(data.RC55.T3.xdAct(1200:1400,3)), min(data.RC55.T3.Force(1200:1400,3)),'*')
plot(max(data.RC55.T4.xdAct(1800:2400,3)), min(data.RC55.T4.Force(1800:2400,3)),'+')
plot(max(data.RC55.T6.xdAct(2800:3200,3)), min(data.RC55.T6.Force(2800:3200,3)),'^')
plot(max(data.RC55.T8.xdAct(3800:4200,3)), min(data.RC55.T8.Force(3800:4200,3)),'square')
plot(max(data.RC55.T10.xdAct(4800:5200,3)), min(data.RC55.T10.Force(4800:5200,3)),'p')
% legend('time=3','time=4','time=5','time=8','time=10')
xlabel('Average Velocity(m/s)')
ylabel('Average Force(N)')
title('RAMP surface, Radius = 5.5 cm')


figure(6)
hold on; grid on;
plot(max(data.RC60.T3.xdAct(1200:1400,3)), min(data.RC60.T3.Force(1200:1400,3)),'*')
plot(max(data.RC60.T4.xdAct(1800:2400,3)), min(data.RC60.T4.Force(1800:2400,3)),'+')
plot(max(data.RC60.T6.xdAct(2800:3200,3)), min(data.RC60.T6.Force(2800:3200,3)),'^')
plot(max(data.RC60.T8.xdAct(3800:4200,3)), min(data.RC60.T8.Force(3800:4200,3)),'square')
plot(max(data.RC60.T10.xdAct(4800:5200,3)), min(data.RC60.T10.Force(4800:5200,3)),'p')
% legend('time=3','time=4','time=5','time=8','time=10')
xlabel('Average Velocity(m/s)')
ylabel('Average Force(N)')
title('RAMP surface, Radius = 6 cm')



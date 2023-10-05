
close all;
T3 = 1000:1200;
T4 = 1200:1600;
T6 = 1600:2600;
T8 = 2200:4100;
T10 = 2500:4700;
%%%%%%%%%%%
figure(1)
subplot(311)
hold on; grid on;
plot(mean(data1.FC50.T3.xdAct(T3,1)), mean(data1.FC50.T3.Force(T3,3)),'*')
plot(mean(data1.FC50.T4.xdAct(T4,1)), mean(data1.FC50.T4.Force(T4,3)),'+')
plot(mean(data1.FC50.T6.xdAct(T6,1)), mean(data1.FC50.T6.Force(T6,3)),'^')
plot(mean(data1.FC50.T8.xdAct(T8,1)), mean(data1.FC50.T8.Force(T8,3)),'square')
plot(mean(data1.FC50.T10.xdAct(T10,1)), mean(data1.FC50.T10.Force(T10,3)),'p')
xlabel('Average Velocity(m/s)')
ylabel('Average Force(N)')
title('Iteration 1, Radius = 5cm')

subplot(312)
hold on; grid on;
plot(mean(data1.FC55.T3.xdAct(T3,1)), mean(data1.FC55.T3.Force(T3,3)),'*')
plot(mean(data1.FC55.T4.xdAct(T4,1)), mean(data1.FC55.T4.Force(T4,3)),'+')
plot(mean(data1.FC55.T6.xdAct(T6,1)), mean(data1.FC55.T6.Force(T6,3)),'^')
plot(mean(data1.FC55.T8.xdAct(T8,1)), mean(data1.FC55.T8.Force(T8,3)),'square')
plot(mean(data1.FC55.T10.xdAct(T10,1)), mean(data.FC55.T10.Force(T10,3)),'p')
xlabel('Average Velocity(m/s)')
ylabel('Average Force(N)')
title('Iteration 1, Radius = 5.5 cm')

subplot(313)
hold on; grid on;
plot(mean(data1.FC60.T3.xdAct(T3,1)), mean(data1.FC60.T3.Force(T3,3)),'*')
plot(mean(data1.FC60.T4.xdAct(T4,1)), mean(data1.FC60.T4.Force(T4,3)),'+')
plot(mean(data1.FC60.T6.xdAct(T6,1)), mean(data1.FC60.T6.Force(T6,3)),'^')
plot(mean(data1.FC60.T8.xdAct(T8,1)), mean(data1.FC60.T8.Force(T8,3)),'square')
plot(mean(data1.FC60.T10.xdAct(T10,1)), mean(data1.FC60.T10.Force(T10,3)),'p')
xlabel('Average Velocity(m/s)')
ylabel('Average Force(N)')
title('Iteration 1, Radius = 6 cm')
%%%%%%%%%
figure(2)
subplot(311)
hold on; grid on;
plot(mean(data2.FC50.T3.xdAct(T3,1)), mean(data2.FC50.T3.Force(T3,3)),'*')
plot(mean(data2.FC50.T4.xdAct(T4,1)), mean(data2.FC50.T4.Force(T4,3)),'+')
plot(mean(data2.FC50.T6.xdAct(T6,1)), mean(data2.FC50.T6.Force(T6,3)),'^')
plot(mean(data2.FC50.T8.xdAct(T8,1)), mean(data2.FC50.T8.Force(T8,3)),'square')
plot(mean(data2.FC50.T10.xdAct(T10,1)), mean(data2.FC50.T10.Force(T10,3)),'p')
xlabel('Average Velocity(m/s)')
ylabel('Average Force(N)')
title('Iteration 2, Radius = 5cm')

subplot(312)
hold on; grid on;
plot(mean(data2.FC55.T3.xdAct(T3,1)), mean(data2.FC55.T3.Force(T3,3)),'*')
plot(mean(data2.FC55.T4.xdAct(T4,1)), mean(data2.FC55.T4.Force(T4,3)),'+')
plot(mean(data2.FC55.T6.xdAct(T6,1)), mean(data2.FC55.T6.Force(T6,3)),'^')
plot(mean(data2.FC55.T8.xdAct(T8,1)), mean(data2.FC55.T8.Force(T8,3)),'square')
plot(mean(data2.FC55.T10.xdAct(T10,1)), mean(data2.FC55.T10.Force(T10,3)),'p')
xlabel('Average Velocity(m/s)')
ylabel('Average Force(N)')
title('Iteration 2, Radius = 5.5 cm')

subplot(313)
hold on; grid on;
plot(mean(data2.FC60.T3.xdAct(T3,1)), mean(data2.FC60.T3.Force(T3,3)),'*')
plot(mean(data2.FC60.T4.xdAct(T4,1)), mean(data2.FC60.T4.Force(T4,3)),'+')
plot(mean(data2.FC60.T6.xdAct(T6,1)), mean(data2.FC60.T6.Force(T6,3)),'^')
plot(mean(data2.FC60.T8.xdAct(T8,1)), mean(data2.FC60.T8.Force(T8,3)),'square')
plot(mean(data2.FC60.T10.xdAct(T10,1)), mean(data2.FC60.T10.Force(T10,3)),'p')
xlabel('Average Velocity(m/s)')
ylabel('Average Force(N)')
title('Iteration 2, Radius = 6 cm')

%%%%%%
figure(3)
subplot(311)
hold on; grid on;
plot(mean(data3.FC50.T3.xdAct(T3,1)), mean(data3.FC50.T3.Force(T3,3)),'*')
plot(mean(data3.FC50.T4.xdAct(T4,1)), mean(data3.FC50.T4.Force(T4,3)),'+')
plot(mean(data3.FC50.T6.xdAct(T6,1)), mean(data3.FC50.T6.Force(T6,3)),'^')
plot(mean(data3.FC50.T8.xdAct(T8,1)), mean(data3.FC50.T8.Force(T8,3)),'square')
plot(mean(data3.FC50.T10.xdAct(T10,1)), mean(data3.FC50.T10.Force(T10,3)),'p')
xlabel('Average Velocity(m/s)')
ylabel('Average Force(N)')
title('Iteration 3, Radius = 5cm')

subplot(312)
hold on; grid on;
plot(mean(data3.FC55.T3.xdAct(T3,1)), mean(data3.FC55.T3.Force(T3,3)),'*')
plot(mean(data3.FC55.T4.xdAct(T4,1)), mean(data3.FC55.T4.Force(T4,3)),'+')
plot(mean(data3.FC55.T6.xdAct(T6,1)), mean(data3.FC55.T6.Force(T6,3)),'^')
plot(mean(data3.FC55.T8.xdAct(T8,1)), mean(data3.FC55.T8.Force(T8,3)),'square')
plot(mean(data3.FC55.T10.xdAct(T10,1)), mean(data3.FC55.T10.Force(T10,3)),'p')
xlabel('Average Velocity(m/s)')
ylabel('Average Force(N)')
title('Iteration 3, Radius = 5.5 cm')

subplot(313)
hold on; grid on;
plot(mean(data3.FC60.T3.xdAct(T3,1)), mean(data3.FC60.T3.Force(T3,3)),'*')
plot(mean(data3.FC60.T4.xdAct(T4,1)), mean(data3.FC60.T4.Force(T4,3)),'+')
plot(mean(data3.FC60.T6.xdAct(T6,1)), mean(data3.FC60.T6.Force(T6,3)),'^')
plot(mean(data3.FC60.T8.xdAct(T8,1)), mean(data3.FC60.T8.Force(T8,3)),'square')
plot(mean(data3.FC60.T10.xdAct(T10,1)), mean(data3.FC60.T10.Force(T10,3)),'p')
xlabel('Average Velocity(m/s)')
ylabel('Average Force(N)')
title('Iteration 3, Radius = 6 cm')


%%%
%%%%%%%%%%%
figure(4)
subplot(311)
hold on; grid on;
plot(mean(data1.RC50.T3.xdAct(T3,1)), mean(data1.RC50.T3.Force(T3,3)),'*')
plot(mean(data1.RC50.T4.xdAct(T4,1)), mean(data1.RC50.T4.Force(T4,3)),'+')
plot(mean(data1.RC50.T6.xdAct(T6,1)), mean(data1.RC50.T6.Force(T6,3)),'^')
plot(mean(data1.RC50.T8.xdAct(T8,1)), mean(data1.RC50.T8.Force(T8,3)),'square')
plot(mean(data1.RC50.T10.xdAct(T10,1)), mean(data1.RC50.T10.Force(T10,3)),'p')
xlabel('Average Velocity(m/s)')
ylabel('Average Force(N)')
title('Iteration 1, Radius = 5cm')

subplot(312)
hold on; grid on;
plot(mean(data1.RC55.T3.xdAct(T3,1)), mean(data1.RC55.T3.Force(T3,3)),'*')
plot(mean(data1.RC55.T4.xdAct(T4,1)), mean(data1.RC55.T4.Force(T4,3)),'+')
plot(mean(data1.RC55.T6.xdAct(T6,1)), mean(data1.RC55.T6.Force(T6,3)),'^')
plot(mean(data1.RC55.T8.xdAct(T8,1)), mean(data1.RC55.T8.Force(T8,3)),'square')
plot(mean(data1.RC55.T10.xdAct(T10,1)), mean(data.RC55.T10.Force(T10,3)),'p')
xlabel('Average Velocity(m/s)')
ylabel('Average Force(N)')
title('Iteration 1, Radius = 5.5 cm')

subplot(313)
hold on; grid on;
plot(mean(data1.RC60.T3.xdAct(T3,1)), mean(data1.RC60.T3.Force(T3,3)),'*')
plot(mean(data1.RC60.T4.xdAct(T4,1)), mean(data1.RC60.T4.Force(T4,3)),'+')
plot(mean(data1.RC60.T6.xdAct(T6,1)), mean(data1.RC60.T6.Force(T6,3)),'^')
plot(mean(data1.RC60.T8.xdAct(T8,1)), mean(data1.RC60.T8.Force(T8,3)),'square')
plot(mean(data1.RC60.T10.xdAct(T10,1)), mean(data1.RC60.T10.Force(T10,3)),'p')
xlabel('Average Velocity(m/s)')
ylabel('Average Force(N)')
title('Iteration 1, Radius = 6 cm')
%%%%%%%%%
figure(5)
subplot(311)
hold on; grid on;
plot(mean(data2.RC50.T3.xdAct(T3,1)), mean(data2.RC50.T3.Force(T3,3)),'*')
plot(mean(data2.RC50.T4.xdAct(T4,1)), mean(data2.RC50.T4.Force(T4,3)),'+')
plot(mean(data2.RC50.T6.xdAct(T6,1)), mean(data2.RC50.T6.Force(T6,3)),'^')
plot(mean(data2.RC50.T8.xdAct(T8,1)), mean(data2.RC50.T8.Force(T8,3)),'square')
plot(mean(data2.RC50.T10.xdAct(T10,1)), mean(data2.RC50.T10.Force(T10,3)),'p')
xlabel('Average Velocity(m/s)')
ylabel('Average Force(N)')
title('Iteration 2, Radius = 5cm')

subplot(312)
hold on; grid on;
plot(mean(data2.RC55.T3.xdAct(T3,1)), mean(data2.RC55.T3.Force(T3,3)),'*')
plot(mean(data2.RC55.T4.xdAct(T4,1)), mean(data2.RC55.T4.Force(T4,3)),'+')
plot(mean(data2.RC55.T6.xdAct(T6,1)), mean(data2.RC55.T6.Force(T6,3)),'^')
plot(mean(data2.RC55.T8.xdAct(T8,1)), mean(data2.RC55.T8.Force(T8,3)),'square')
plot(mean(data2.RC55.T10.xdAct(T10,1)), mean(data2.RC55.T10.Force(T10,3)),'p')
xlabel('Average Velocity(m/s)')
ylabel('Average Force(N)')
title('Iteration 2, Radius = 5.5 cm')

subplot(313)
hold on; grid on;
plot(mean(data2.RC60.T3.xdAct(T3,1)), mean(data2.RC60.T3.Force(T3,3)),'*')
plot(mean(data2.RC60.T4.xdAct(T4,1)), mean(data2.RC60.T4.Force(T4,3)),'+')
plot(mean(data2.RC60.T6.xdAct(T6,1)), mean(data2.RC60.T6.Force(T6,3)),'^')
plot(mean(data2.RC60.T8.xdAct(T8,1)), mean(data2.RC60.T8.Force(T8,3)),'square')
plot(mean(data2.RC60.T10.xdAct(T10,1)), mean(data2.RC60.T10.Force(T10,3)),'p')
xlabel('Average Velocity(m/s)')
ylabel('Average Force(N)')
title('Iteration 2, Radius = 6 cm')

%%%%%%
figure(6)
subplot(311)
hold on; grid on;
plot(mean(data3.RC50.T3.xdAct(T3,1)), mean(data3.RC50.T3.Force(T3,3)),'*')
plot(mean(data3.RC50.T4.xdAct(T4,1)), mean(data3.RC50.T4.Force(T4,3)),'+')
plot(mean(data3.RC50.T6.xdAct(T6,1)), mean(data3.RC50.T6.Force(T6,3)),'^')
plot(mean(data3.RC50.T8.xdAct(T8,1)), mean(data3.RC50.T8.Force(T8,3)),'square')
plot(mean(data3.RC50.T10.xdAct(T10,1)), mean(data3.RC50.T10.Force(T10,3)),'p')
xlabel('Average Velocity(m/s)')
ylabel('Average Force(N)')
title('Iteration 3, Radius = 5cm')

subplot(312)
hold on; grid on;
plot(mean(data3.RC55.T3.xdAct(T3,1)), mean(data3.RC55.T3.Force(T3,3)),'*')
plot(mean(data3.RC55.T4.xdAct(T4,1)), mean(data3.RC55.T4.Force(T4,3)),'+')
plot(mean(data3.RC55.T6.xdAct(T6,1)), mean(data3.RC55.T6.Force(T6,3)),'^')
plot(mean(data3.RC55.T8.xdAct(T8,1)), mean(data3.RC55.T8.Force(T8,3)),'square')
plot(mean(data3.RC55.T10.xdAct(T10,1)), mean(data3.RC55.T10.Force(T10,3)),'p')
xlabel('Average Velocity(m/s)')
ylabel('Average Force(N)')
title('Iteration 3, Radius = 5.5 cm')

subplot(313)
hold on; grid on;
plot(mean(data3.RC60.T3.xdAct(T3,1)), mean(data3.RC60.T3.Force(T3,3)),'*')
plot(mean(data3.RC60.T4.xdAct(T4,1)), mean(data3.RC60.T4.Force(T4,3)),'+')
plot(mean(data3.RC60.T6.xdAct(T6,1)), mean(data3.RC60.T6.Force(T6,3)),'^')
plot(mean(data3.RC60.T8.xdAct(T8,1)), mean(data3.RC60.T8.Force(T8,3)),'square')
plot(mean(data3.RC60.T10.xdAct(T10,1)), mean(data3.RC60.T10.Force(T10,3)),'p')
xlabel('Average Velocity(m/s)')
ylabel('Average Force(N)')
title('Iteration 3, Radius = 6 cm')





% figure(4)
% hold on; grid on;
% plot(mean(data.RC50.T3.xdAct(T3,1)), mean(data.RC50.T3.Force(T3,3)),'*')
% plot(mean(data.RC50.T4.xdAct(T4,1)), mean(data.RC50.T4.Force(T4,3)),'+')
% plot(mean(data.RC50.T6.xdAct(T6,1)), mean(data.RC50.T6.Force(T6,3)),'^')
% plot(mean(data.RC50.T8.xdAct(T8,1)), mean(data.RC50.T8.Force(T8,3)),'square')
% plot(mean(data.RC50.T10.xdAct(T10,1)), mean(data.RC50.T10.Force(T10,3)),'p')
% xlabel('Average Velocity(m/s)')
% ylabel('Average Force(N)')
% title('RAMP surface, Radius = 5cm')
% 
% 
% figure(5)
% hold on; grid on;
% plot(mean(data.RC55.T3.xdAct(T3,1)), mean(data.RC55.T3.Force(T3,3)),'*')
% plot(mean(data.RC55.T4.xdAct(T4,1)), mean(data.RC55.T4.Force(T4,3)),'+')
% plot(mean(data.RC55.T6.xdAct(T6,1)), mean(data.RC55.T6.Force(T6,3)),'^')
% plot(mean(data.RC55.T8.xdAct(T8,1)), mean(data.RC55.T8.Force(T8,3)),'square')
% plot(mean(data.RC55.T10.xdAct(T10,1)), mean(data.RC55.T10.Force(T10,3)),'p')
% xlabel('Average Velocity(m/s)')
% ylabel('Average Force(N)')
% title('RAMP surface, Radius = 5.5 cm')
% 
% 
% figure(6)
% hold on; grid on;
% plot(mean(data.RC60.T3.xdAct(T3,1)), mean(data.RC60.T3.Force(T3,3)),'*')
% plot(mean(data.RC60.T4.xdAct(T4,1)), mean(data.RC60.T4.Force(T4,3)),'+')
% plot(mean(data.RC60.T6.xdAct(T6,1)), mean(data.RC60.T6.Force(T6,3)),'^')
% plot(mean(data.RC60.T8.xdAct(T8,1)), mean(data.RC60.T8.Force(T8,3)),'square')
% plot(mean(data.RC60.T10.xdAct(T10,1)), mean(data.RC60.T10.Force(T10,3)),'p')
% xlabel('Average Velocity(m/s)')
% ylabel('Average Force(N)')
% title('RAMP surface, Radius = 6 cm')

% %%%%
% figure(7)
% hold on; grid on;
% plot(mean(data.FC50.T3.xdAct(T3,1)), std(data.FC50.T3.Force(T3,3)),'*')
% plot(mean(data.FC50.T4.xdAct(T4,1)), std(data.FC50.T4.Force(T4,3)),'+')
% plot(mean(data.FC50.T6.xdAct(T6,1)), std(data.FC50.T6.Force(T6,3)),'^')
% plot(mean(data.FC50.T8.xdAct(T8,1)), std(data.FC50.T8.Force(T8,3)),'square')
% plot(mean(data.FC50.T10.xdAct(T10,1)), std(data.FC50.T10.Force(T10,3)),'p')
% % legend('time=3','time=4','time=5','time=8','time=10')
% xlabel('Average Velocity(m/s)')
% ylabel('Standart Deviation Force(N)')
% title('Iteration 1, Radius = 5cm')
% 
% figure(8)
% hold on; grid on;
% plot(mean(data.FC55.T3.xdAct(T3,1)), std(data.FC55.T3.Force(T3,3)),'*')
% plot(mean(data.FC55.T4.xdAct(T4,1)), std(data.FC55.T4.Force(T4,3)),'+')
% plot(mean(data.FC55.T6.xdAct(T6,1)), std(data.FC55.T6.Force(T6,3)),'^')
% plot(mean(data.FC55.T8.xdAct(T8,1)), std(data.FC55.T8.Force(T8,3)),'square')
% plot(mean(data.FC55.T10.xdAct(T10,1)), std(data.FC55.T10.Force(T10,3)),'p')
% % legend('time=3','time=4','time=5','time=8','time=10')
% xlabel('Average Velocity(m/s)')
% ylabel('Standart Deviation Force(N)')
% title('Iteration 1, Radius = 5.5 cm')
% 
% figure(9)
% hold on; grid on;
% plot(mean(data.FC60.T3.xdAct(T3,1)), std(data.FC60.T3.Force(T3,3)),'*')
% plot(mean(data.FC60.T4.xdAct(T4,1)), std(data.FC60.T4.Force(T4,3)),'+')
% plot(mean(data.FC60.T6.xdAct(T6,1)), std(data.FC60.T6.Force(T6,3)),'^')
% plot(mean(data.FC60.T8.xdAct(T8,1)), std(data.FC60.T8.Force(T8,3)),'square')
% plot(mean(data.FC60.T10.xdAct(T10,1)), std(data.FC60.T10.Force(T10,3)),'p')
% % legend('time=3','time=4','time=5','time=8','time=10')
% xlabel('Average Velocity(m/s)')
% ylabel('Standart Deviation Force(N)')
% title('Iteration 1, Radius = 6 cm')
% 
% 
% figure(10)
% hold on; grid on;
% plot(mean(data.RC50.T3.xdAct(T3,1)), std(data.RC50.T3.Force(T3,3)),'*')
% plot(mean(data.RC50.T4.xdAct(T4,1)), std(data.RC50.T4.Force(T4,3)),'+')
% plot(mean(data.RC50.T6.xdAct(T6,1)), std(data.RC50.T6.Force(T6,3)),'^')
% plot(mean(data.RC50.T8.xdAct(T8,1)), std(data.RC50.T8.Force(T8,3)),'square')
% plot(mean(data.RC50.T10.xdAct(T10,1)), std(data.RC50.T10.Force(T10,3)),'p')
% % legend('time=3','time=4','time=5','time=8','time=10')
% xlabel('Average Velocity(m/s)')
% ylabel('Standart Deviation Force(N)')
% title('RAMP surface, Radius = 5cm')
% 
% 
% figure(11)
% hold on; grid on;
% plot(mean(data.RC55.T3.xdAct(T3,1)), std(data.RC55.T3.Force(T3,3)),'*')
% plot(mean(data.RC55.T4.xdAct(T4,1)), std(data.RC55.T4.Force(T4,3)),'+')
% plot(mean(data.RC55.T6.xdAct(T6,1)), std(data.RC55.T6.Force(T6,3)),'^')
% plot(mean(data.RC55.T8.xdAct(T8,1)), std(data.RC55.T8.Force(T8,3)),'square')
% plot(mean(data.RC55.T10.xdAct(T10,1)), std(data.RC55.T10.Force(T10,3)),'p')
% % legend('time=3','time=4','time=5','time=8','time=10')
% xlabel('Average Velocity(m/s)')
% ylabel('Standart Deviation Force(N)')
% title('RAMP surface, Radius = 5.5 cm')
% 
% 
% figure(12)
% hold on; grid on;
% plot(mean(data.RC60.T3.xdAct(T3,1)), std(data.RC60.T3.Force(T3,3)),'*')
% plot(mean(data.RC60.T4.xdAct(T4,1)), std(data.RC60.T4.Force(T4,3)),'+')
% plot(mean(data.RC60.T6.xdAct(T6,1)), std(data.RC60.T6.Force(T6,3)),'^')
% plot(mean(data.RC60.T8.xdAct(T8,1)), std(data.RC60.T8.Force(T8,3)),'square')
% plot(mean(data.RC60.T10.xdAct(T10,1)), std(data.RC60.T10.Force(T10,3)),'p')
% % legend('time=3','time=4','time=5','time=8','time=10')
% xlabel('Average Velocity(m/s)')
% ylabel('Standart Deviation Force(N)')
% title('RAMP surface, Radius = 6 cm')

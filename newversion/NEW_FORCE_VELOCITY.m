close all;
T3 = 1000:1200;
T4 = 1200:1600;
T6 = 1600:2600;
T8 = 2200:4100;
T10 = 2500:4700;



figure(1)
subplot(3,1,1)
hold on; grid on
plot(data1.FC50.T10.xdAct(T10,1),data1.FC50.T10.Force(T10,3),'.')
plot(data1.FC50.T8.xdAct(T8,1),data1.FC50.T8.Force(T8,3),'.')
plot(data1.FC50.T6.xdAct(T6,1),data1.FC50.T6.Force(T6,3),'.')
plot(data1.FC50.T4.xdAct(T4,1),data1.FC50.T4.Force(T4,3),'.')
plot(data1.FC50.T3.xdAct(T3,1),data1.FC50.T3.Force(T3,3),'.')
xlabel('Velocity in X axis')
ylabel('Force in Z axis')
title('Flat Surface Contact for Radius=5cm Iteration=1')
legend('T10','T8','T6','T4','T3')
xlim([-0.2 0.4])
ylim([-0.8 -0.2])

subplot(3,1,2)
hold on; grid on
plot(data2.FC50.T10.xdAct(T10,1),data2.FC50.T10.Force(T10,3),'.')
plot(data2.FC50.T8.xdAct(T8,1),data2.FC50.T8.Force(T8,3),'.')
plot(data2.FC50.T6.xdAct(T6,1),data2.FC50.T6.Force(T6,3),'.')
plot(data2.FC50.T4.xdAct(T4,1),data2.FC50.T4.Force(T4,3),'.')
plot(data2.FC50.T3.xdAct(T3,1),data2.FC50.T3.Force(T3,3),'.')
xlabel('Velocity in X axis')
ylabel('Force in Z axis')
title('Flat Surface Contact for Radius=5cm Iteration=2')
legend('T10','T8','T6','T4','T3')
xlim([-0.2 0.4])
ylim([-0.8 -0.2])


subplot(3,1,3)
hold on; grid on
plot(data3.FC50.T10.xdAct(T10,1),data3.FC50.T10.Force(T10,3),'.')
plot(data3.FC50.T8.xdAct(T8,1),data3.FC50.T8.Force(T8,3),'.')
plot(data3.FC50.T6.xdAct(T6,1),data3.FC50.T6.Force(T6,3),'.')
plot(data3.FC50.T4.xdAct(T4,1),data3.FC50.T4.Force(T4,3),'.')
plot(data3.FC50.T3.xdAct(T3,1),data3.FC50.T3.Force(T3,3),'.')
xlabel('Velocity in X axis')
ylabel('Force in Z axis')
title('Flat Surface Contact for Radius=5cm Iteration=3')
legend('T10','T8','T6','T4','T3')
xlim([-0.2 0.4])
ylim([-0.8 -0.2])


figure(2)
subplot(3,1,1)
hold on; grid on
plot(data1.FC55.T10.xdAct(T10,1),data1.FC55.T10.Force(T10,3),'.')
plot(data1.FC55.T8.xdAct(T8,1),data1.FC55.T8.Force(T8,3),'.')
plot(data1.FC55.T6.xdAct(T6,1),data1.FC55.T6.Force(T6,3),'.')
plot(data1.FC55.T4.xdAct(T4,1),data1.FC55.T4.Force(T4,3),'.')
plot(data1.FC55.T3.xdAct(T3,1),data1.FC55.T3.Force(T3,3),'.')
xlabel('Velocity in X axis')
ylabel('Force in Z axis')
title('Flat Surface Contact for Radius=5.5cm Iteration=1')
legend('T10','T8','T6','T4','T3')
xlim([-0.2 0.4])
ylim([-1.2 -.4])


subplot(3,1,2)
hold on; grid on
plot(data2.FC55.T10.xdAct(T10,1),data2.FC55.T10.Force(T10,3),'.')
plot(data2.FC55.T8.xdAct(T8,1),data2.FC55.T8.Force(T8,3),'.')
plot(data2.FC55.T6.xdAct(T6,1),data2.FC55.T6.Force(T6,3),'.')
plot(data2.FC55.T4.xdAct(T4,1),data2.FC55.T4.Force(T4,3),'.')
plot(data2.FC55.T3.xdAct(T3,1),data2.FC55.T3.Force(T3,3),'.')
xlabel('Velocity in X axis')
ylabel('Force in Z axis')
title('Flat Surface Contact for Radius=5.5cm Iteration=2')
legend('T10','T8','T6','T4','T3')
xlim([-0.2 0.4])
ylim([-1.2 -.4])


subplot(3,1,3)
hold on; grid on
plot(data3.FC55.T10.xdAct(T10,1),data3.FC55.T10.Force(T10,3),'.')
plot(data3.FC55.T8.xdAct(T8,1),data3.FC55.T8.Force(T8,3),'.')
plot(data3.FC55.T6.xdAct(T6,1),data3.FC55.T6.Force(T6,3),'.')
plot(data3.FC55.T4.xdAct(T4,1),data3.FC55.T4.Force(T4,3),'.')
plot(data3.FC55.T3.xdAct(T3,1),data3.FC55.T3.Force(T3,3),'.')
xlabel('Velocity in X axis')
ylabel('Force in Z axis')
title('Flat Surface Contact for Radius=5.5cm Iteration=3')
legend('T10','T8','T6','T4','T3')
xlim([-0.2 0.4])
ylim([-1.2 -.4])



figure(3)
subplot(3,1,1)
hold on; grid on
plot(data1.FC60.T10.xdAct(T10,1),data1.FC60.T10.Force(T10,3),'.')
plot(data1.FC60.T8.xdAct(T8,1),data1.FC60.T8.Force(T8,3),'.')
plot(data1.FC60.T6.xdAct(T6,1),data1.FC60.T6.Force(T6,3),'.')
plot(data1.FC60.T4.xdAct(T4,1),data1.FC60.T4.Force(T4,3),'.')
plot(data1.FC60.T3.xdAct(T3,1),data1.FC60.T3.Force(T3,3),'.')
xlabel('Velocity in X axis')
ylabel('Force in Z axis')
title('Flat Surface Contact for Radius=6cm Iteration=1')
legend('T10','T8','T6','T4','T3')
xlim([-0.2 0.4])
ylim([-3.8 -2.6])


subplot(3,1,2)
hold on; grid on
plot(data2.FC60.T10.xdAct(T10,1),data2.FC60.T10.Force(T10,3),'.')
plot(data2.FC60.T8.xdAct(T8,1),data2.FC60.T8.Force(T8,3),'.')
plot(data2.FC60.T6.xdAct(T6,1),data2.FC60.T6.Force(T6,3),'.')
plot(data2.FC60.T4.xdAct(T4,1),data2.FC60.T4.Force(T4,3),'.')
plot(data2.FC60.T3.xdAct(T3,1),data2.FC60.T3.Force(T3,3),'.')
xlabel('Velocity in X axis')
ylabel('Force in Z axis')
title('Flat Surface Contact for Radius=6cm Iteration=2')
legend('T10','T8','T6','T4','T3')
xlim([-0.2 0.4])
ylim([-3.8 -2.6])

subplot(3,1,3)
hold on; grid on
plot(data3.FC60.T10.xdAct(T10,1),data3.FC60.T10.Force(T10,3),'.')
plot(data3.FC60.T8.xdAct(T8,1),data3.FC60.T8.Force(T8,3),'.')
plot(data3.FC60.T6.xdAct(T6,1),data3.FC60.T6.Force(T6,3),'.')
plot(data3.FC60.T4.xdAct(T4,1),data3.FC60.T4.Force(T4,3),'.')
plot(data3.FC60.T3.xdAct(T3,1),data3.FC60.T3.Force(T3,3),'.')
xlabel('Velocity in X axis')
ylabel('Force in Z axis')
title('Flat Surface Contact for Radius=6cm Iteration=3')
legend('T10','T8','T6','T4','T3')
xlim([-0.2 0.4])
ylim([-3.8 -2.6])


figure(4)
subplot(3,1,1)
hold on; grid on;

plot(data1.FA55.T10.xdAct(T10,1),data1.FA55.T10.Force(T10,3),'.')
plot(data1.FA55.T8.xdAct(T8,1),data1.FA55.T8.Force(T8,3),'.')
plot(data1.FA55.T6.xdAct(T6,1),data1.FA55.T6.Force(T6,3),'.')
plot(data1.FA55.T4.xdAct(T4,1),data1.FA55.T4.Force(T4,3),'.')
plot(data1.FA55.T3.xdAct(T3,1),data1.FA55.T3.Force(T3,3),'.')
xlabel('Velocity in X axis')
ylabel('Force in Z axis')
title('Flat Surface No Contact for Radius=5.5cm Iteration=1')
legend('T10','T8','T6','T4','T3')
xlim([-0.2 0.4])



subplot(3,1,2)
hold on; grid on
plot(data2.FA55.T10.xdAct(T10,1),data2.FA55.T10.Force(T10,3),'.')
plot(data2.FA55.T8.xdAct(T8,1),data2.FA55.T8.Force(T8,3),'.')
plot(data2.FA55.T6.xdAct(T6,1),data2.FA55.T6.Force(T6,3),'.')
plot(data2.FA55.T4.xdAct(T4,1),data2.FA55.T4.Force(T4,3),'.')
plot(data2.FA55.T3.xdAct(T3,1),data2.FA55.T3.Force(T3,3),'.')
xlabel('Velocity in X axis')
ylabel('Force in Z axis')
title('Flat Surface No Contact for Radius=5.5cm Iteration=2')
legend('T10','T8','T6','T4','T3')
xlim([-0.2 0.4])


subplot(3,1,3)
hold on; grid on
plot(data3.FA55.T10.xdAct(T10,1),data3.FA55.T10.Force(T10,3),'.')
plot(data3.FA55.T8.xdAct(T8,1),data3.FA55.T8.Force(T8,3),'.')
plot(data3.FA55.T6.xdAct(T6,1),data3.FA55.T6.Force(T6,3),'.')
plot(data3.FA55.T4.xdAct(T4,1),data3.FA55.T4.Force(T4,3),'.')
plot(data3.FA55.T3.xdAct(T3,1),data3.FA55.T3.Force(T3,3),'.')
xlabel('Velocity in X axis')
ylabel('Force in Z axis')
title('Flat Surface No Contact for Radius=5.5cm Iteration=1')
legend('T10','T8','T6','T4','T3')
xlim([-0.2 0.4])

figure(5)
subplot(5,3,1);
hold on; grid on;
plot(data1.FC50.T3.xdAct(T3,1), data1.FC50.T3.Force(T3,3),'.')
plot(data1.FC55.T3.xdAct(T3,1), data1.FC55.T3.Force(T3,3),'.')
plot(data1.FC60.T3.xdAct(T3,1), data1.FC60.T3.Force(T3,3),'.')
xlabel('Velocity in X axis')
ylabel('Force in Z axis')
title('Iteration=1 Time =3sec')
legend('R=5','R=5.5','R=6')
xlim([-0.1 1])


subplot(5,3,4)
hold on; grid on;
plot(data1.FC50.T4.xdAct(T4,1), data1.FC50.T4.Force(T4,3),'.')
plot(data1.FC55.T4.xdAct(T4,1), data1.FC55.T4.Force(T4,3),'.')
plot(data1.FC60.T4.xdAct(T4,1), data1.FC60.T4.Force(T4,3),'.')
xlabel('Velocity in X axis')
ylabel('Force in Z axis')
title('Iteration=1 Time =4sec')
legend('R=5','R=5.5','R=6')
xlim([-0.1 1])

subplot(5,3,7)
hold on; grid on;
plot(data1.FC50.T6.xdAct(T6,1), data1.FC50.T6.Force(T6,3),'.')
plot(data1.FC55.T6.xdAct(T6,1), data1.FC55.T6.Force(T6,3),'.')
plot(data1.FC60.T6.xdAct(T6,1), data1.FC60.T6.Force(T6,3),'.')
xlabel('Velocity in X axis')
ylabel('Force in Z axis')
title('Iteration=1 Time =6sec')
legend('R=5','R=5.5','R=6')
xlim([-0.1 1])


subplot(5,3,10)
hold on; grid on;
plot(data1.FC50.T8.xdAct(T8,1), data1.FC50.T8.Force(T8,3),'.')
plot(data1.FC55.T8.xdAct(T8,1), data1.FC55.T8.Force(T8,3),'.')
plot(data1.FC60.T8.xdAct(T8,1), data1.FC60.T8.Force(T8,3),'.')
xlabel('Velocity in X axis')
ylabel('Force in Z axis')
title('Iteration=1 Time =8sec')
legend('R=5','R=5.5','R=6')
xlim([-0.1 1])


subplot(5,3,13)
hold on; grid on;
plot(data1.FC50.T10.xdAct(T10,1), data1.FC50.T10.Force(T10,3),'.')
plot(data1.FC55.T10.xdAct(T10,1), data1.FC55.T10.Force(T10,3),'.')
plot(data1.FC60.T10.xdAct(T10,1), data1.FC60.T10.Force(T10,3),'.')
xlabel('Velocity in X axis')
ylabel('Force in Z axis')
title('Iteration=1 Time =10sec')
legend('R=5','R=5.5','R=6')
xlim([-0.1 1])

subplot(5,3,2);
hold on; grid on;
plot(data2.FC50.T3.xdAct(T3,1), data2.FC50.T3.Force(T3,3),'.')
plot(data2.FC55.T3.xdAct(T3,1), data2.FC55.T3.Force(T3,3),'.')
plot(data2.FC60.T3.xdAct(T3,1), data2.FC60.T3.Force(T3,3),'.')
xlabel('Velocity in X axis')
ylabel('Force in Z axis')
title('Iteration=2 Time =3sec')
legend('R=5','R=5.5','R=6')
xlim([-0.1 1])


subplot(5,3,5)
hold on; grid on;
plot(data2.FC50.T4.xdAct(T4,1), data2.FC50.T4.Force(T4,3),'.')
plot(data2.FC55.T4.xdAct(T4,1), data2.FC55.T4.Force(T4,3),'.')
plot(data2.FC60.T4.xdAct(T4,1), data2.FC60.T4.Force(T4,3),'.')
xlabel('Velocity in X axis')
ylabel('Force in Z axis')
title('Iteration=2 Time =4sec')
legend('R=5','R=5.5','R=6')
xlim([-0.1 1])

subplot(5,3,8)
hold on; grid on;
plot(data2.FC50.T6.xdAct(T6,1), data2.FC50.T6.Force(T6,3),'.')
plot(data2.FC55.T6.xdAct(T6,1), data2.FC55.T6.Force(T6,3),'.')
plot(data2.FC60.T6.xdAct(T6,1), data2.FC60.T6.Force(T6,3),'.')
xlabel('Velocity in X axis')
ylabel('Force in Z axis')
title('Iteration=2 Time =6sec')
legend('R=5','R=5.5','R=6')
xlim([-0.1 1])


subplot(5,3,11)
hold on; grid on;
plot(data2.FC50.T8.xdAct(T8,1), data2.FC50.T8.Force(T8,3),'.')
plot(data2.FC55.T8.xdAct(T8,1), data2.FC55.T8.Force(T8,3),'.')
plot(data2.FC60.T8.xdAct(T8,1), data2.FC60.T8.Force(T8,3),'.')
xlabel('Velocity in X axis')
ylabel('Force in Z axis')
title('Iteration=2 Time =8sec')
legend('R=5','R=5.5','R=6')
xlim([-0.1 1])


subplot(5,3,14)
hold on; grid on;
plot(data2.FC50.T10.xdAct(T10,1), data2.FC50.T10.Force(T10,3),'.')
plot(data2.FC55.T10.xdAct(T10,1), data2.FC55.T10.Force(T10,3),'.')
plot(data2.FC60.T10.xdAct(T10,1), data2.FC60.T10.Force(T10,3),'.')
xlabel('Velocity in X axis')
ylabel('Force in Z axis')
title('Iteration=2 Time =10sec')
legend('R=5','R=5.5','R=6')
xlim([-0.1 1])

subplot(5,3,3);
hold on; grid on;
plot(data3.FC50.T3.xdAct(T3,1), data3.FC50.T3.Force(T3,3),'.')
plot(data3.FC55.T3.xdAct(T3,1), data3.FC55.T3.Force(T3,3),'.')
plot(data3.FC60.T3.xdAct(T3,1), data3.FC60.T3.Force(T3,3),'.')
xlabel('Velocity in X axis')
ylabel('Force in Z axis')
title('Iteration=3 Time =3sec')
legend('R=5','R=5.5','R=6')
xlim([-0.1 1])


subplot(5,3,6)
hold on; grid on;
plot(data3.FC50.T4.xdAct(T4,1), data3.FC50.T4.Force(T4,3),'.')
plot(data3.FC55.T4.xdAct(T4,1), data3.FC55.T4.Force(T4,3),'.')
plot(data3.FC60.T4.xdAct(T4,1), data3.FC60.T4.Force(T4,3),'.')
xlabel('Velocity in X axis')
ylabel('Force in Z axis')
title('Iteration=3 Time =4sec')
legend('R=5','R=5.5','R=6')
xlim([-0.1 1])

subplot(5,3,9)
hold on; grid on;
plot(data3.FC50.T6.xdAct(T6,1), data3.FC50.T6.Force(T6,3),'.')
plot(data3.FC55.T6.xdAct(T6,1), data3.FC55.T6.Force(T6,3),'.')
plot(data3.FC60.T6.xdAct(T6,1), data3.FC60.T6.Force(T6,3),'.')
xlabel('Velocity in X axis')
ylabel('Force in Z axis')
title('Iteration=3 Time =6sec')
legend('R=5','R=5.5','R=6')
xlim([-0.1 1])


subplot(5,3,12)
hold on; grid on;
plot(data3.FC50.T8.xdAct(T8,1), data3.FC50.T8.Force(T8,3),'.')
plot(data3.FC55.T8.xdAct(T8,1), data3.FC55.T8.Force(T8,3),'.')
plot(data3.FC60.T8.xdAct(T8,1), data3.FC60.T8.Force(T8,3),'.')
xlabel('Velocity in X axis')
ylabel('Force in Z axis')
title('Iteration=3 Time =8sec')
legend('R=5','R=5.5','R=6')
xlim([-0.1 1])


subplot(5,3,15)
hold on; grid on;
plot(data3.FC50.T10.xdAct(T10,1), data3.FC50.T10.Force(T10,3),'.')
plot(data3.FC55.T10.xdAct(T10,1), data3.FC55.T10.Force(T10,3),'.')
plot(data3.FC60.T10.xdAct(T10,1), data3.FC60.T10.Force(T10,3),'.')
xlabel('Velocity in X axis')
ylabel('Force in Z axis')
title('Iteration=3 Time =10sec')
legend('R=5','R=5.5','R=6')
xlim([-0.1 1])





%%%%%%%%%%%%%%
%%%  RAMP
%%%%%%%%%%%%%%



figure(6)
subplot(3,1,1)
hold on; grid on
plot(data1.RC50.T10.xdAct(T10,1),data1.RC50.T10.Force(T10,3),'.')
plot(data1.RC50.T8.xdAct(T8,1),data1.RC50.T8.Force(T8,3),'.')
plot(data1.RC50.T6.xdAct(T6,1),data1.RC50.T6.Force(T6,3),'.')
plot(data1.RC50.T4.xdAct(T4,1),data1.RC50.T4.Force(T4,3),'.')
plot(data1.RC50.T3.xdAct(T3,1),data1.RC50.T3.Force(T3,3),'.')
xlabel('Velocity in X axis')
ylabel('Force in Z axis')
title('Ramp Surface Contact for Radius=5cm Iteration=1')
legend('T10','T8','T6','T4','T3')
xlim([-0.2 0.4])

subplot(3,1,2)
hold on; grid on
plot(data2.RC50.T10.xdAct(T10,1),data2.RC50.T10.Force(T10,3),'.')
plot(data2.RC50.T8.xdAct(T8,1),data2.RC50.T8.Force(T8,3),'.')
plot(data2.RC50.T6.xdAct(T6,1),data2.RC50.T6.Force(T6,3),'.')
plot(data2.RC50.T4.xdAct(T4,1),data2.RC50.T4.Force(T4,3),'.')
plot(data2.RC50.T3.xdAct(T3,1),data2.RC50.T3.Force(T3,3),'.')
xlabel('Velocity in X axis')
ylabel('Force in Z axis')
title('Ramp Surface Contact for Radius=5cm Iteration=2')
legend('T10','T8','T6','T4','T3')
xlim([-0.2 0.4])


subplot(3,1,3)
hold on; grid on
plot(data3.RC50.T10.xdAct(T10,1),data3.RC50.T10.Force(T10,3),'.')
plot(data3.RC50.T8.xdAct(T8,1),data3.RC50.T8.Force(T8,3),'.')
plot(data3.RC50.T6.xdAct(T6,1),data3.RC50.T6.Force(T6,3),'.')
plot(data3.RC50.T4.xdAct(T4,1),data3.RC50.T4.Force(T4,3),'.')
plot(data3.RC50.T3.xdAct(T3,1),data3.RC50.T3.Force(T3,3),'.')
xlabel('Velocity in X axis')
ylabel('Force in Z axis')
title('Ramp Surface Contact for Radius=5cm Iteration=3')
legend('T10','T8','T6','T4','T3')
xlim([-0.2 0.4])


figure(7)
subplot(3,1,1)
hold on; grid on
plot(data1.RC55.T10.xdAct(T10,1),data1.RC55.T10.Force(T10,3),'.')
plot(data1.RC55.T8.xdAct(T8,1),data1.RC55.T8.Force(T8,3),'.')
plot(data1.RC55.T6.xdAct(T6,1),data1.RC55.T6.Force(T6,3),'.')
plot(data1.RC55.T4.xdAct(T4,1),data1.RC55.T4.Force(T4,3),'.')
plot(data1.RC55.T3.xdAct(T3,1),data1.RC55.T3.Force(T3,3),'.')
xlabel('Velocity in X axis')
ylabel('Force in Z axis')
title('Ramp Surface Contact for Radius=5.5cm Iteration=1')
legend('T10','T8','T6','T4','T3')
xlim([-0.2 0.4])


subplot(3,1,2)
hold on; grid on
plot(data2.RC55.T10.xdAct(T10,1),data2.RC55.T10.Force(T10,3),'.')
plot(data2.RC55.T8.xdAct(T8,1),data2.RC55.T8.Force(T8,3),'.')
plot(data2.RC55.T6.xdAct(T6,1),data2.RC55.T6.Force(T6,3),'.')
plot(data2.RC55.T4.xdAct(T4,1),data2.RC55.T4.Force(T4,3),'.')
plot(data2.RC55.T3.xdAct(T3,1),data2.RC55.T3.Force(T3,3),'.')
xlabel('Velocity in X axis')
ylabel('Force in Z axis')
title('Ramp Surface Contact for Radius=5.5cm Iteration=2')
legend('T10','T8','T6','T4','T3')
xlim([-0.2 0.4])


subplot(3,1,3)
hold on; grid on
plot(data3.RC55.T10.xdAct(T10,1),data3.RC55.T10.Force(T10,3),'.')
plot(data3.RC55.T8.xdAct(T8,1),data3.RC55.T8.Force(T8,3),'.')
plot(data3.RC55.T6.xdAct(T6,1),data3.RC55.T6.Force(T6,3),'.')
plot(data3.RC55.T4.xdAct(T4,1),data3.RC55.T4.Force(T4,3),'.')
plot(data3.RC55.T3.xdAct(T3,1),data3.RC55.T3.Force(T3,3),'.')
xlabel('Velocity in X axis')
ylabel('Force in Z axis')
title('Ramp Surface Contact for Radius=5.5cm Iteration=3')
legend('T10','T8','T6','T4','T3')
xlim([-0.2 0.4])



figure(8)
subplot(3,1,1)
hold on; grid on
plot(data1.RC60.T10.xdAct(T10,1),data1.RC60.T10.Force(T10,3),'.')
plot(data1.RC60.T8.xdAct(T8,1),data1.RC60.T8.Force(T8,3),'.')
plot(data1.RC60.T6.xdAct(T6,1),data1.RC60.T6.Force(T6,3),'.')
plot(data1.RC60.T4.xdAct(T4,1),data1.RC60.T4.Force(T4,3),'.')
plot(data1.RC60.T3.xdAct(T3,1),data1.RC60.T3.Force(T3,3),'.')
xlabel('Velocity in X axis')
ylabel('Force in Z axis')
title('Ramp Surface Contact for Radius=6cm Iteration=1')
legend('T10','T8','T6','T4','T3')
xlim([-0.2 0.4])


subplot(3,1,2)
hold on; grid on
plot(data2.RC60.T10.xdAct(T10,1),data2.RC60.T10.Force(T10,3),'.')
plot(data2.RC60.T8.xdAct(T8,1),data2.RC60.T8.Force(T8,3),'.')
plot(data2.RC60.T6.xdAct(T6,1),data2.RC60.T6.Force(T6,3),'.')
plot(data2.RC60.T4.xdAct(T4,1),data2.RC60.T4.Force(T4,3),'.')
plot(data2.RC60.T3.xdAct(T3,1),data2.RC60.T3.Force(T3,3),'.')
xlabel('Velocity in X axis')
ylabel('Force in Z axis')
title('Ramp Surface Contact for Radius=6cm Iteration=2')
legend('T10','T8','T6','T4','T3')
xlim([-0.2 0.4])

subplot(3,1,3)
hold on; grid on
plot(data3.RC60.T10.xdAct(T10,1),data3.RC60.T10.Force(T10,3),'.')
plot(data3.RC60.T8.xdAct(T8,1),data3.RC60.T8.Force(T8,3),'.')
plot(data3.RC60.T6.xdAct(T6,1),data3.RC60.T6.Force(T6,3),'.')
plot(data3.RC60.T4.xdAct(T4,1),data3.RC60.T4.Force(T4,3),'.')
plot(data3.RC60.T3.xdAct(T3,1),data3.RC60.T3.Force(T3,3),'.')
xlabel('Velocity in X axis')
ylabel('Force in Z axis')
title('Ramp Surface Contact for Radius=6cm Iteration=3')
legend('T10','T8','T6','T4','T3')
xlim([-0.2 0.4])


figure(9)
subplot(3,1,1)
hold on; grid on;

plot(data1.RA55.T10.xdAct(T10,1),data1.RA55.T10.Force(T10,3),'.')
plot(data1.RA55.T8.xdAct(T8,1),data1.RA55.T8.Force(T8,3),'.')
plot(data1.RA55.T6.xdAct(T6,1),data1.RA55.T6.Force(T6,3),'.')
plot(data1.RA55.T4.xdAct(T4,1),data1.RA55.T4.Force(T4,3),'.')
plot(data1.RA55.T3.xdAct(T3,1),data1.RA55.T3.Force(T3,3),'.')
xlabel('Velocity in X axis')
ylabel('Force in Z axis')
title('Ramp Surface No Contact for Radius=5.5cm Iteration=1')
legend('T10','T8','T6','T4','T3')
xlim([-0.2 0.4])



subplot(3,1,2)
hold on; grid on
plot(data2.RA55.T10.xdAct(T10,1),data2.RA55.T10.Force(T10,3),'.')
plot(data2.RA55.T8.xdAct(T8,1),data2.RA55.T8.Force(T8,3),'.')
plot(data2.RA55.T6.xdAct(T6,1),data2.RA55.T6.Force(T6,3),'.')
plot(data2.RA55.T4.xdAct(T4,1),data2.RA55.T4.Force(T4,3),'.')
plot(data2.RA55.T3.xdAct(T3,1),data2.RA55.T3.Force(T3,3),'.')
xlabel('Velocity in X axis')
ylabel('Force in Z axis')
title('Ramp Surface No Contact for Radius=5.5cm Iteration=2')
legend('T10','T8','T6','T4','T3')
xlim([-0.2 0.4])


subplot(3,1,3)
hold on; grid on
plot(data3.RA55.T10.xdAct(T10,1),data3.RA55.T10.Force(T10,3),'.')
plot(data3.RA55.T8.xdAct(T8,1),data3.RA55.T8.Force(T8,3),'.')
plot(data3.RA55.T6.xdAct(T6,1),data3.RA55.T6.Force(T6,3),'.')
plot(data3.RA55.T4.xdAct(T4,1),data3.RA55.T4.Force(T4,3),'.')
plot(data3.RA55.T3.xdAct(T3,1),data3.RA55.T3.Force(T3,3),'.')
xlabel('Velocity in X axis')
ylabel('Force in Z axis')
title('Ramp Surface No Contact for Radius=5.5cm Iteration=3')
legend('T10','T8','T6','T4','T3')
xlim([-0.2 0.4])




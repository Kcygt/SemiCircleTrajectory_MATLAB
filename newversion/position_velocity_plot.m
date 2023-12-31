figure(1)
hold on; grid on;
plot(data.FC50.T3.xAct(:,3),data.FC50.T3.xdAct(:,3))
plot(data.FC55.T3.xAct(:,3),data.FC55.T3.xdAct(:,3))
plot(data.FC60.T3.xAct(:,3),data.FC60.T3.xdAct(:,3))
title('Position and Velocityfor Time= 3s')
xlabel('Position in z axes')
ylabel('Velocity in z axes')
legend('Radius= 5cm','Radius= 5.5cm','Radius= 6cm')

figure(2)
hold on; grid on;
plot(data.FC50.T4.xAct(:,3),data.FC50.T4.xdAct(:,3))
plot(data.FC55.T4.xAct(:,3),data.FC55.T4.xdAct(:,3))
plot(data.FC60.T4.xAct(:,3),data.FC60.T4.xdAct(:,3))
title('Position and Velocity for Time= 4s')
xlabel('Position in z axes')
ylabel('Velocity in z axes')
legend('Radius= 5cm','Radius= 5.5cm','Radius= 6cm')



figure(3)
hold on; grid on;
plot(data.FC50.T6.xAct(:,3),data.FC50.T6.xdAct(:,3))
plot(data.FC55.T6.xAct(:,3),data.FC55.T6.xdAct(:,3))
plot(data.FC60.T6.xAct(:,3),data.FC60.T6.xdAct(:,3))
title('Position and Velocity for Time= 6s')
xlabel('Position in z axes')
ylabel('Velocity in z axes')
legend('Radius= 5cm','Radius= 5.5cm','Radius= 6cm')



figure(4)
hold on; grid on;
plot(data.FC50.T8.xAct(:,3),data.FC50.T8.xdAct(:,3))
plot(data.FC55.T8.xAct(:,3),data.FC55.T8.xdAct(:,3))
plot(data.FC60.T8.xAct(:,3),data.FC60.T8.xdAct(:,3))
title('Position and Velocity for Time= 8s')
xlabel('Position in z axes')
ylabel('Velocity in z axes')
legend('Radius= 5cm','Radius= 5.5cm','Radius= 6cm')



figure(5)
hold on; grid on;
plot(data.FC50.T10.xAct(:,3),data.FC50.T10.xdAct(:,3))
plot(data.FC55.T10.xAct(:,3),data.FC55.T10.xdAct(:,3))
plot(data.FC60.T10.xAct(:,3),data.FC60.T10.xdAct(:,3))
title('Position and Velocity for Time= 10s')
xlabel('Position in z axes')
ylabel('Velocity in z axes')
legend('Radius= 5cm','Radius= 5.5cm','Radius= 6cm')





figure(6)
hold on; grid on;

plot(data.FC50.T3.xAct(:,3),data.FC50.T3.xdAct(:,3))
plot(data.FC50.T4.xAct(:,3),data.FC50.T4.xdAct(:,3))
plot(data.FC50.T6.xAct(:,3),data.FC50.T6.xdAct(:,3))
plot(data.FC50.T8.xAct(:,3),data.FC50.T8.xdAct(:,3))
plot(data.FC50.T10.xAct(:,3),data.FC50.T10.xdAct(:,3))


title('Position and Velocity for Time= 10s')
xlabel('Position in z axes')
ylabel('Velocity in z axes')
legend('Time=3','Time=4','Time=6','Time=8','Time=10')



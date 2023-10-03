% figure(1)
% hold on; grid on;
% 
% 
% plot(data.FC50.T3.xAct(:,3), data.FC50.T3.xAct(:,3))
% plot(data.FC50.T4.xAct(:,3), data.FC50.T4.xAct(:,3))
% plot(data.FC50.T6.xAct(:,3), data.FC50.T6.xAct(:,3))
% plot(data.FC50.T8.xAct(:,3), data.FC50.T8.xAct(:,3))
% plot(data.FC50.T10.xAct(:,3), data.FC50.T10.xAct(:,3))
% 
% legend('Desired','T3','T4','T6','T8','T10')
% %RMS error for velocity
figure(2)
T3 = rmse(data.FC50.T3.xDes(1000:2000,3),data.FC50.T3.xAct(1000:2000,3));
T4 = rmse(data.FC50.T4.xDes(:,3),data.FC50.T4.xAct(:,3));
T6 = rmse(data.FC50.T6.xDes(:,3),data.FC50.T6.xAct(:,3));
T8 = rmse(data.FC50.T8.xDes(:,3),data.FC50.T8.xAct(:,3));
T10 = rmse(data.FC50.T10.xDes(:,3),data.FC50.T10.xAct(:,3));
plot(3,T3,'*',4,T4,'d',6,T6,'s',8,T8,'+',10,T10,'o')
legend('T3','T4','T6','T8','T10')
xlabel('Time(s)')
ylabel('Error')
title('RMS error for flat R=5cm')


figure(3)
T3 = rmse(data.FC55.T3.xDes(:,3),data.FC55.T3.xAct(:,3));
T4 = rmse(data.FC55.T4.xDes(:,3),data.FC55.T4.xAct(:,3));
T6 = rmse(data.FC55.T6.xDes(:,3),data.FC55.T6.xAct(:,3));
T8 = rmse(data.FC55.T8.xDes(:,3),data.FC55.T8.xAct(:,3));
T10 = rmse(data.FC55.T10.xDes(:,3),data.FC55.T10.xAct(:,3));
plot(3,T3,'*',4,T4,'d',6,T6,'s',8,T8,'+',10,T10,'o')
legend('T3','T4','T6','T8','T10')
xlabel('Time(s)')
ylabel('Error')
title('RMS error for flat R=5.5cm')

figure(4)
T3 = rmse(data.FC60.T3.xDes(:,3),data.FC60.T3.xAct(:,3));
T4 = rmse(data.FC60.T4.xDes(:,3),data.FC60.T4.xAct(:,3));
T6 = rmse(data.FC60.T6.xDes(:,3),data.FC60.T6.xAct(:,3));
T8 = rmse(data.FC60.T8.xDes(:,3),data.FC60.T8.xAct(:,3));
T10 = rmse(data.FC60.T10.xDes(:,3),data.FC60.T10.xAct(:,3));
plot(3,T3,'*',4,T4,'d',6,T6,'s',8,T8,'+',10,T10,'o')
legend('T3','T4','T6','T8','T10')
xlabel('Time(s)')
ylabel('Error')
title('RMS error for flat R=6cm')


figure(5)
T3 = rmse(data.RC50.T3.xDes(:,3),data.RC50.T3.xAct(:,3));
T4 = rmse(data.RC50.T4.xDes(:,3),data.RC50.T4.xAct(:,3));
T6 = rmse(data.RC50.T6.xDes(:,3),data.RC50.T6.xAct(:,3));
T8 = rmse(data.RC50.T8.xDes(:,3),data.RC50.T8.xAct(:,3));
T10 = rmse(data.RC50.T10.xDes(:,3),data.RC50.T10.xAct(:,3));
plot(3,T3,'*',4,T4,'d',6,T6,'s',8,T8,'+',10,T10,'o')
legend('T3','T4','T6','T8','T10')
xlabel('Time(s)')
ylabel('Error')
title('RMS error for Ramp R=5cm')
% figure(3)

figure(6)
T3 = rmse(data.RC55.T3.xDes(:,3),data.RC55.T3.xAct(:,3));
T4 = rmse(data.RC55.T4.xDes(:,3),data.RC55.T4.xAct(:,3));
T6 = rmse(data.RC55.T6.xDes(:,3),data.RC55.T6.xAct(:,3));
T8 = rmse(data.RC55.T8.xDes(:,3),data.RC55.T8.xAct(:,3));
T10 = rmse(data.RC55.T10.xDes(:,3),data.RC55.T10.xAct(:,3));
plot(3,T3,'*',4,T4,'d',6,T6,'s',8,T8,'+',10,T10,'o')
legend('T3','T4','T6','T8','T10')
xlabel('Time(s)')
ylabel('Error')
title('RMS error for Ramp R=5.5cm')

figure(7)
T3 = rmse(data.RC60.T3.xDes(:,3),data.RC60.T3.xAct(:,3));
T4 = rmse(data.RC60.T4.xDes(:,3),data.RC60.T4.xAct(:,3));
T6 = rmse(data.RC60.T6.xDes(:,3),data.RC60.T6.xAct(:,3));
T8 = rmse(data.RC60.T8.xDes(:,3),data.RC60.T8.xAct(:,3));
T10 = rmse(data.RC60.T10.xDes(:,3),data.RC60.T10.xAct(:,3));
plot(3,T3,'*',4,T4,'d',6,T6,'s',8,T8,'+',10,T10,'o')
legend('T3','T4','T6','T8','T10')
xlabel('Time(s)')
ylabel('Error')
title('RMS error for Ramp R=6cm')



close all

figure(1)
hold on
plot(data1.FC50.T10.Time,data1.FC50.T10.xdAct(:,1))
plot(data1.FC50.T10.Time,data1.FC50.T10.xdRec(:,3),LineWidth=2)
xlabel("Time(sec)")
ylabel("Velocity(m/sec)")
title("Recorded(Jacobian) and Actual(Forward) Velocity")
legend("Actual Velocity","Recorded Velocity")
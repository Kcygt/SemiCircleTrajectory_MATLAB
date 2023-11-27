close all

% Jacobian and Forward Velocity Data comparison
figure(1)
hold on
plot(data1.FC50.T10.Time,data1.FC50.T10.xdAct(:,1))
plot(data1.FC50.T10.Time,data1.FC50.T10.xdRec(:,3),LineWidth=2)
xlabel("Time(sec)")
ylabel("Velocity(m/sec)")
title("Recorded(Jacobian) and Actual(Forward) Velocity")
legend("Actual Velocity","Recorded Velocity")

% Friction/Normal force according to Velocity for LOW penetration
figure(2)
hold on;grid on;

% Plot Low Penetration data
plot(-data1.FC50.T10.Force(2400:6500,3), -data1.FC50.T10.Force(2400:6500,1), 'v');
plot(-data1.FC50.T6.Force(1600:3900,3), -data1.FC50.T6.Force(1600:3900,1), 'v');
plot(-data1.FC50.T3.Force(1000:1800,3), -data1.FC50.T3.Force(1000:1800,1), 'v');

% Plot Medium Penetration data
plot(-data1.FC55.T10.Force(2400:6500,3), -data1.FC55.T10.Force(2400:6500,1), 'o');
plot(-data1.FC55.T6.Force(1800:4000,3), -data1.FC55.T6.Force(1800:4000,1), 'o');
plot(-data1.FC55.T3.Force(1100:1700,3), -data1.FC55.T3.Force(1100:1700,1), 'o');

% Plot High Penetration data
plot(-data1.FC60.T10.Force(2000:4500,3), -data1.FC60.T10.Force(2000:4500,1), '^');
plot(-data1.FC60.T6.Force(1700:3300,3), -data1.FC60.T6.Force(1700:3300,1), '^');
plot(-data1.FC60.T3.Force(900:1300,3), -data1.FC60.T3.Force(900:1300,1), '^');

xlabel("Normal Force(N)");
ylabel("Friction Force(N)");
legend("Low Penetration - 0.03 m/s", "Low Penetration - 0.05 m/s", "Low Penetration - 0.10 m/s", ...
    "Medium Penetration - 0.03 m/s", "Medium Penetration - 0.05 m/s", "Medium Penetration - 0.10 m/s", ...
    "High Penetration - 0.03 m/s", "High Penetration - 0.05 m/s", "High Penetration - 0.10 m/s");
title("Friction/Normal force according to Velocity for Different Penetrations");

figure(3)
hold on; grid on;
% Plot Low Penetration data
plot(data1.FC50.T10.xdRec(2400:6500,3),-data1.FC50.T10.Force(2400:6500,3),  'v');
plot(data1.FC50.T6.xdRec(1600:3900,3),-data1.FC50.T6.Force(1600:3900,3), 'v');
plot(data1.FC50.T3.xdRec(1000:1800,3),-data1.FC50.T3.Force(1000:1800,3), 'v');

% Plot Medium Penetration data
plot( data1.FC55.T10.xdRec(2400:6500,3),-data1.FC55.T10.Force(2400:6500,3), 'o');
plot( data1.FC55.T6.xdRec(1800:4000,3),-data1.FC55.T6.Force(1800:4000,3), 'o');
plot( data1.FC55.T3.xdRec(1100:1700,3),-data1.FC55.T3.Force(1100:1700,3), 'o');

% Plot High Penetration data
plot( data1.FC60.T10.xdRec(2000:4500,3),-data1.FC60.T10.Force(2000:4500,3), '^');
plot( data1.FC60.T6.xdRec(1700:3300,3),-data1.FC60.T6.Force(1700:3300,3), '^');
plot( data1.FC60.T3.xdRec(900:1300,3),-data1.FC60.T3.Force(900:1300,3), '^');
xlabel("Velocity(m/s)")
ylabel("Normal Force(N)")
title("Comparison Friction force and Velocity for different penetration")
legend("Low Penetration - 0.03 m/s", "Low Penetration - 0.05 m/s", "Low Penetration - 0.10 m/s", ...
    "Medium Penetration - 0.03 m/s", "Medium Penetration - 0.05 m/s", "Medium Penetration - 0.10 m/s", ...
    "High Penetration - 0.03 m/s", "High Penetration - 0.05 m/s", "High Penetration - 0.10 m/s");

figure(4)
hold on; grid on;
% Plot Low Penetration data
plot(data1.FC50.T10.xdRec(2400:6500,3),-data1.FC50.T10.Force(2400:6500,1),  'v');
plot(data1.FC50.T6.xdRec(1600:3900,3),-data1.FC50.T6.Force(1600:3900,1), 'v');
plot(data1.FC50.T3.xdRec(1000:1800,3),-data1.FC50.T3.Force(1000:1800,1), 'v');

% Plot Medium Penetration data
plot( data1.FC55.T10.xdRec(2400:6500,3),-data1.FC55.T10.Force(2400:6500,1), 'o');
plot( data1.FC55.T6.xdRec(1800:4000,3),-data1.FC55.T6.Force(1800:4000,1), 'o');
plot( data1.FC55.T3.xdRec(1100:1700,3),-data1.FC55.T3.Force(1100:1700,1), 'o');

% Plot High Penetration data
plot( data1.FC60.T10.xdRec(2000:4500,3),-data1.FC60.T10.Force(2000:4500,1), '^');
plot( data1.FC60.T6.xdRec(1700:3300,3),-data1.FC60.T6.Force(1700:3300,1), '^');
plot( data1.FC60.T3.xdRec(900:1300,3),-data1.FC60.T3.Force(900:1300,1), '^');
xlabel("Velocity(m/s)")
ylabel("Friction Force(N)")
title("Comparison Friction force and Velocity for different penetration")
legend("Low Penetration - 0.03 m/s", "Low Penetration - 0.05 m/s", "Low Penetration - 0.10 m/s", ...
    "Medium Penetration - 0.03 m/s", "Medium Penetration - 0.05 m/s", "Medium Penetration - 0.10 m/s", ...
    "High Penetration - 0.03 m/s", "High Penetration - 0.05 m/s", "High Penetration - 0.10 m/s");



figure(5)
hold on; grid on;
boxplot(data1.FC50.T10.xdRec(2400:6500,3))
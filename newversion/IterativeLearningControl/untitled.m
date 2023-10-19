Ts = 0.01;
num = [100];
den = [1 120];
sysc = tf(num,den);
sysd = c2d(sysc,Ts,'ZOH');



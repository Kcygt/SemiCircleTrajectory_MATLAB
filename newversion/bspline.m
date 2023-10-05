cpts = [0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 ; ...
        0 -0.20 -.38 -0.54 -0.68 -0.80 -0.90 -0.98 -1 -1 -1 -1 -1 -0.7 -0.5 -0.3 -0.5 -0.7 -1 -1 -1 -0.98 -.90 -0.8 -0.68 -0.54 -0.38 -0.2 0 0];
tpts = [0 5];
tvec = 0:0.01:5;
[q, qd, qdd, pp] = bsplinepolytraj(cpts,tpts,tvec);
figure
plot(cpts(1,:),cpts(2,:),'xb-')
hold all
plot(q(1,:), q(2,:))
xlabel('X')
ylabel('Y')
hold off
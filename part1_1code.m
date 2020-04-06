%% run before simulink simulation

time = [0:0.001:3.5]';
s1 = zeros(1,800)';
s2 = 12.6*ones(1,314)';
s3 = zeros(1,800)';
s4 = 12.4*ones(1,314)';
s5 = zeros(1,800)';
s6 = zeros(1,473)';

data = [s1;-1*s2;s3;s4;s5;s6];
data1 = cat(1,s1,-1*s2);
data2 = cat(1,data1,s1);
data3 = cat(1,data2,s2);
data4 = cat(1,data3,s1);
%data = cat(1,data4,s6);

rdata = cat(1, 25*ones(3028,1), zeros(473,1));

r = [time,rdata];

s = [time,data];

%% run after simulink simulation

x = squeeze(x);
y = squeeze(y);
theta = squeeze(theta);

figure(1)
plot(x)
title('x position of robot, x(t)')
xlabel('time')
ylabel('x position (m)')

figure(2)
plot(y)
title('y position of robot, y(t)')
xlabel('time')
ylabel('y position (m)')

figure(3)
plot(theta)
title('theta angle of robot, theta(t)')
xlabel('time')
ylabel('angle (radian)')

%% run before simulink simulation

% time = [0:0.001:3.5]';
% s1 = zeros(1,800)';
% s2 = 12.6*ones(1,314)';
% s3 = zeros(1,800)';
% s4 = 12.4*ones(1,314)';
% s5 = zeros(1,800)';
% s6 = zeros(1,473)';

time = [0:0.01:15]';
s1 = zeros(1,400)';
s2 = 12.624*ones(1,31)';
s3 = zeros(1,400)';
s4 = 13.08*ones(1,31)';
s5 = zeros(1,400)';
s6 = zeros(1,239)';

data = [s1;-1*s2;s3;s4;s5;s6];
data1 = cat(1,s1,-1*s2);
data2 = cat(1,data1,s1);
data3 = cat(1,data2,s2);
data4 = cat(1,data3,s1);
%data = cat(1,data4,s6);

rdata = cat(1, 2.5*ones(1262,1), zeroscle(239,1));

r = [time,rdata];

s = [time,data];

%% run after simulink simulation

x = squeeze(x);
y = squeeze(y);
theta = squeeze(theta);


figure(1)
subplot(1,2,1)
plot(r(:,2))
title('r(t) velocity profile')
xlabel('time')
ylabel('r value(rad/sec)')

subplot(1,2,2)
plot(s(:,2))
title('s(t) steering profile')
xlabel('time')
ylabel('s value (rad/sec)')

figure(2)
subplot(1,3,1)
plot(x)
title('x position of robot, x(t)')
xlabel('time')
ylabel('x position (m)')

subplot(1,3,2)
plot(y)
title('y position of robot, y(t)')
xlabel('time')
ylabel('y position (m)')

subplot(1,3,3)
plot(theta)
title('theta angle of robot, theta(t)')
xlabel('time')
ylabel('angle (radian)')

figure(3)
plot(x,y)
title('path of robot in x y plane')
xlabel('x position (m)')
ylabel('y position (m)')


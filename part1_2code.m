%% run before simulink simulation

time = [0:0.01:9]';
s1 = [0.025:0.025:5]';
s2 = [5:-0.019:2.49]';
s3 = 2.5*ones(1,31)';
s4 = [2.49:0.019:5]';
s5 = [5:-0.019:2.49]';
s6 = 2.5*ones(1,31)';
s7 = [2.49:0.019:5]';
s8 = 5*ones(1,100)';
s9 = zeros(1,7)';

r1 = zeros(1,333)';
r2 = -12.53*ones(1,31)';
r3 = zeros(1,266)';
r4 = 12.53*ones(1,31)';
r5 = zeros(1,240)';

rdata = [s1;s2;s3;s4;s5;s6;s7;s8;s9];

sdata = [r1;r2;r3;r4;r5];

r = [time,rdata];

s = [time,sdata];

%% run after simulink simulation

x = squeeze(out.x);
y = squeeze(out.y);
theta = squeeze(out.theta);

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
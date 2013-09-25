% To process perching x, y, z data

clear
clc
close all

load('perching_19May2013_diff_height.mat')

%*******************
% Perching Maneuver
%*******************

time_i = 30;   %start time (second)
time_f = 160;  %end time (second)

dT = Pd_vs_P.time(2)-Pd_vs_P.time(1);
tick_i = (time_i/dT)+1;
tick_f = (time_f/dT)+1;

time = Pd_vs_P.time(tick_i:tick_f);
time = time - time(1);

x = Pd_vs_P.signals.values(tick_i:tick_f,1);
y = Pd_vs_P.signals.values(tick_i:tick_f,2);
z = Pd_vs_P.signals.values(tick_i:tick_f,3);
x_d = Pd_vs_P.signals.values(tick_i:tick_f,4);
y_d = Pd_vs_P.signals.values(tick_i:tick_f,5);
z_d = Pd_vs_P.signals.values(tick_i:tick_f,6);

figure(1)
subplot(3,1,1)
plot(time,x_d,time,x)
legend('x_{desired}','x_{actual}'), grid on
title('Perching Maneuver: X-position'),xlabel('time(s)'),ylabel('x(m)')

subplot(3,1,2)
plot(time,y_d,time,y)
legend('y_{desired}','y_{actual}'), grid on
title('Perching Maneuver: Y-position'),xlabel('time(s)'),ylabel('y(m)')

subplot(3,1,3)
plot(time,z_d,time,z)
legend('z_{desired}','z_{actual}'), grid on
title('Perching Maneuver: Z-position'),xlabel('time(s)'),ylabel('z(m)')


%*******************
% Hovering
%*******************

time_hover_i = 100;  %start time (second)
time_hover_f = 110;  %end time (second)

tick_hover_i = (time_hover_i/dT)+1;
tick_hover_f = (time_hover_f/dT)+1;

time = time(tick_hover_i:tick_hover_f);
time = time - time(1);

x = x(tick_hover_i:tick_hover_f);
y = y(tick_hover_i:tick_hover_f);
z = z(tick_hover_i:tick_hover_f);
x_d = x_d(tick_hover_i:tick_hover_f);
y_d = y_d(tick_hover_i:tick_hover_f);
z_d = z_d(tick_hover_i:tick_hover_f);

x_d = x_d(1);
y_d = y_d(1);
z_d = z_d(1);

figure(2)

subplot(3,1,1)
plot(time,x-x_d)
grid on
title('Hovering Accuracy: X-position'),xlabel('time(s)'),ylabel('x(m)')

subplot(3,1,2)
plot(time,y-y_d)
grid on
title('Hovering Accuracy: Y-position'),xlabel('time(s)'),ylabel('y(m)')

subplot(3,1,3)
plot(time,z-z_d)
grid on
title('Hovering Accuracy: Z-position'),xlabel('time(s)'),ylabel('z(m)')

% % plot circle
% plot(x-x_d,y-y_d,'.');
% hold
% polar(0:2*pi/100:2*pi,ones(1,101)*0.015)
% 
% daspect([1 1 1])
% grid on
% xlabel('X(m)'),ylabel('Y(m)')
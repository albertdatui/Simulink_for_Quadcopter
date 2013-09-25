sample_time = 0.02;
%t1 = 3; %second
%t2 = 25;%second

t1s = 9000; %t1/sample_time;
t2s = 15000; %t2/sample_time;

pos_x = pos_vel_data.signals.values(t1s:t2s,1);
pos_y = pos_vel_data.signals.values(t1s:t2s,2);
pos_z = pos_vel_data.signals.values(t1s:t2s,3);

vel_x = pos_vel_data.signals.values(t1s:t2s,4);
vel_y = pos_vel_data.signals.values(t1s:t2s,5);
vel_z = pos_vel_data.signals.values(t1s:t2s,6);

x_mean = mean(pos_x)
y_mean = mean(pos_y)
z_mean = mean(pos_z)
x_sd = std(pos_x)
y_sd = std(pos_y)
z_sd = std(pos_z)

% plot

figure(1)
time = 0:sample_time:(t2s-t1s)*sample_time;
subplot(311)
plot(time,pos_x)
ylabel('X Position (m)')
grid on

subplot(312)
plot(time,pos_y)
ylabel('Y Position (m)')
grid on

subplot(313)
plot(time,pos_z)
ylabel('Z Position (m)')
xlabel('Time (s)')
grid on

figure(2)
subplot(311)
plot(time,vel_x)
ylabel('X Velocity (m/s)')
grid on

subplot(312)
plot(time,vel_y)
ylabel('Y Velocity (m/s)')
grid on

subplot(313)
plot(time,vel_z)
ylabel('Z Velocity (m/s)')
xlabel('Time (s)')
grid on
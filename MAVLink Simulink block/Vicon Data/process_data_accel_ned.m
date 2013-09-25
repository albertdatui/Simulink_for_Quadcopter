sample_time = 0.02;
t1 = 80; %second
t2 = 200; %second

t1s = t1/sample_time;
t2s = t2/sample_time;

acc_ned_x = pos_accel_data.signals.values(t1s:t2s,4);
acc_ned_y = pos_accel_data.signals.values(t1s:t2s,5);
acc_ned_z = pos_accel_data.signals.values(t1s:t2s,6);

x_mean = mean(acc_ned_x)
y_mean = mean(acc_ned_y)
z_mean = mean(acc_ned_z)

x_sd = std(acc_ned_x)
y_sd = std(acc_ned_y)
z_sd = std(acc_ned_z)

% plot

time = 0:sample_time:(t2s-t1s)*sample_time;
plot(time,acc_ned_x,time,acc_ned_y,time,acc_ned_z)
xlabel('Time(s)')
ylabel('Acceleration(m/s^2)')
grid on
legend('X','Y','Z')
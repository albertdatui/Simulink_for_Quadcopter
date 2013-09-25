t1 = 36;
t2 = 50;

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


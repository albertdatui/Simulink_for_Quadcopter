%% Sliding mode control for height hold by Zhao Weihua 24Oct2010

%% meaning of Parameters
% kt : thrust coefficient for properler, kT=[2.5, 3.5]X10^5
% dz : Tx deadzone, dz = 1135 us
% km : the gain from pwm ---> motor speed (rad/s), km = [0.9, 1.5],
% (pwm - dz)^2 = u, u is the control signal we used in sliding mode
%  pwm = sqrt(u) + dz

%% parameters
% Tx deadzone
dz = 1135;

% kt
% kt_hat = 3*0.00001;
% kt_min = 2.5*0.00001;
% kt_max = 3.5*0.00001;
kt_hat = 1.46*0.00001;
kt_min = 1*0.00001;
kt_max = 2*0.00001;

% m
m_hat = 1.1;
m_min = 0.99;
m_max = 1.3;

% km
% km_hat = 1.2;
% km_hat = 1.672;
km_hat = 1.4;
km_min = 1.3;
km_max = 1.6;

% g
g_hat = 9.81;
g_min = 9.3;
g_max = 10.3;

%% the equation for the height will be:
% ZDotDot = 4*kt_hat*square(km_hat)/m_hat*u - g_hat
% acording to slotine f = -g; b = 4*kt*square(km)/m
% f_hat = -9.81, b_hat = 1.2*0.0001
f_hat = -g_hat;
b_hat = 4*kt_hat*square(km_hat)/m_hat;
F = g_max - g_hat; % bound on f
b_max = 4*kt_max*square(km_max)/m_min;
b_min = 4*kt_min*square(km_min)/m_max;
beta = sqrt(b_max/b_min);

% 
%% Sliding parameters
eta = 1e-6;
gama = 0.1;

%% initial states for the reference system
HRIni = 0.245;
HRDotIni = 0;
% [HRIni HRDotIni]

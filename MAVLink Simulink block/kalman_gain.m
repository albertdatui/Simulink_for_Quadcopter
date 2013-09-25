% clc;
% A = [0 1 0; 0 0 1; 0 0 0];
% B = [0 0; 1 1; 0 1];
% C = [1 0 0];
% D = 0;
% 
% sys = ss(A,B,C,D);
% 
% sysd = c2d(sys,0.02);
% 
% Qn = 0.3^2;
% [KEST,L,P,M,Z] = kalmd(sys,Qn, 0.01^2,0.02)


%% Kalman filter for Vicon position and Velocity estimate, take the acc as input and vicon position as output
clear
clc
T = 0.02;
A = [1 T -1/2*T^2; 0 1 -T; 0 0 1];
B = [1/2*T^2 T 0]';
C = [1 0 0];
D = 0;
sys = ss(A,B,C,D,T);
aError = 0.5; % we assume that the acc noise is 0.5,  to get a more accurate KF, large acc data should be obtained
bError = 0.1; % we assume that the ass bias is 0.1, 
Sz = 0.001^2;
Sw = [(aError*1/2*T^2)^2 (aError*1/2*T^2)*(aError*T) (aError*1/2*T^2)*bError;
      (aError*1/2*T^2)*(aError*T) (aError*T)^2 (aError*T)*bError;
      (aError*1/2*T^2)*bError (aError*T)*bError bError^2];
%   [KEST,L,P] = kalman(sys,Sw,Sz)

%  Riccati follows
E = eye(3);
A_R = A';
Q = Sw;
B_R = C';
S = zeros(3,1);
R = Sz;
% [X,L,G] = DARE(A,B,Q,R,S,E)
[Sigma, L,G] = dare(A_R,B_R,Q,R,S,E); %calculate the error covariance matrix, using Ricatti equation
K = A*Sigma*C'*inv(C*Sigma*C' + Sz) %Kalman Gain


%% 


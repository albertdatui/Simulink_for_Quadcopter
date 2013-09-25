% for new Kalman filter



%% without delay state

%% 
% Initial condition for estimated state:       
zeros([9, 1])

%%
%%State transition matrix:  

A = [1 sample_time sample_time*sample_time/2 zeros(1,6);0 1 sample_time zeros(1,6);0 0 1 zeros(1,6);0 0 0 1 sample_time sample_time*sample_time/2 0 0 0;zeros(1,4) 1 sample_time zeros(1,3);zeros(1,5) 1 zeros(1,3);zeros(1,6) 1 sample_time sample_time*sample_time/2;zeros(1,7) 1 sample_time;zeros(1,8) 1];

%% 
% Process noise covariance:

diag([0 0.001 0.001 0 0.001 0.001 0 0.001 0.001]);

%% 
% Measurement matrix:   
[1 zeros(1,8); zeros(1,3) 1 zeros(1,5);zeros(1,6) 1 0 0]

%% 
% Measurement noise covariance:

0.001*eye(3)


%% %% with delay state

%% 
% Initial condition for estimated state:       
zeros([12, 1])


%%
%%State transition matrix:  

A = [1 sample_time sample_time*sample_time/2 zeros(1,9);0 1 sample_time zeros(1,9);0 0 1 zeros(1,9);0 0 2*sample_time 1 zeros(1,8);0 0 0 0 1 sample_time sample_time*sample_time/2 zeros(1,5);zeros(1,5) 1 sample_time zeros(1,5);zeros(1,6) 1 zeros(1,5);zeros(1,6) 2*sample_time 1 zeros(1,4);zeros(1,8) 1 sample_time sample_time*sample_time/2 0;zeros(1,9) 1 sample_time 0;zeros(1,10) 1 0;zeros(1,10) 2*sample_time 1];

%% 
% Process noise covariance:

diag([0 0.001 0.001 0.001 0 0.001 0.001 0.001 0 0.001 0.001 0.001]);

%% 
% Measurement matrix:   
[1 zeros(1,11); zeros(1,4) 1 zeros(1,7);zeros(1,8) 1 0 0 0]

%% 
% Measurement noise covariance:

0.001*eye(3)
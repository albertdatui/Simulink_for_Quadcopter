clear
clc
close all

% load UAV1_POS.mat
% load UAV2_POS.mat
% load UAV3_POS.mat
% load UAV3_POS.mat

load test_3_HeightIncrease.mat

DeltaT = 0.02;

tstart = 32.5;
tend = 40.5;

Tstart = tstart/DeltaT;
Tend = tend/DeltaT;
Time = [0:DeltaT:(tend-tstart)];

UAV1_x = UAV1_POS.signals.values(Tstart:Tend,1);
UAV1_y = UAV1_POS.signals.values(Tstart:Tend,2);
UAV1_z = UAV1_POS.signals.values(Tstart:Tend,3);

UAV2_x = UAV2_POS.signals.values(Tstart:Tend,1);
UAV2_y = UAV2_POS.signals.values(Tstart:Tend,2);
UAV2_z = UAV2_POS.signals.values(Tstart:Tend,3);

UAV3_x = UAV3_POS.signals.values(Tstart:Tend,1);
UAV3_y = UAV3_POS.signals.values(Tstart:Tend,2);
UAV3_z = UAV3_POS.signals.values(Tstart:Tend,3);

UAV4_x = UAV4_POS.signals.values(Tstart:Tend,1);
UAV4_y = UAV4_POS.signals.values(Tstart:Tend,2);
UAV4_z = UAV4_POS.signals.values(Tstart:Tend,3);

% Simulation data

t_end_prime = 400;
UAV1_x_sim = UAV1.signals.values(1:t_end_prime,1);
UAV1_y_sim = UAV1.signals.values(1:t_end_prime,2);

UAV2_x_sim = UAV2.signals.values(1:t_end_prime,1);
UAV2_y_sim = UAV2.signals.values(1:t_end_prime,2);

UAV3_x_sim = UAV3.signals.values(1:t_end_prime,1);
UAV3_y_sim = UAV3.signals.values(1:t_end_prime,2);

UAV4_x_sim = UAV4.signals.values(1:t_end_prime,1);
UAV4_y_sim = UAV4.signals.values(1:t_end_prime,2);
    

% *************
% Vectorize
% *************
x_traj = [UAV1_x, UAV2_x, UAV3_x, UAV4_x];
y_traj = [UAV1_y, UAV2_y, UAV3_y, UAV4_y];
z_traj = [UAV1_z, UAV2_z, UAV3_z, UAV4_z];


figure(1)

% Experiment data
hold
plot(UAV1_x,UAV1_y,'k','LineWidth',3)
plot(UAV2_x,UAV2_y,'b',UAV3_x,UAV3_y,'r',UAV4_x,UAV4_y,'m')

plot(-2,0,'sk','MarkerSize',8,'MarkerFaceColor','k','MarkerEdgeColor','k')
plot(-2,2,'ob','MarkerSize',8,'MarkerFaceColor','b','MarkerEdgeColor','b')
plot(0,2,'dr','MarkerSize',8,'MarkerFaceColor','r','MarkerEdgeColor','r')
plot(-0.5,0.5,'^m','MarkerSize',8,'MarkerFaceColor','m','MarkerEdgeColor','m')

% Simulation data
plot(UAV1_x_sim,UAV1_y_sim,':k')
plot(UAV2_x_sim,UAV2_y_sim,':b')
plot(UAV3_x_sim,UAV3_y_sim,':r')
plot(UAV4_x_sim,UAV4_y_sim,':m')

daspect([1 1 1]), grid on
xlabel('X(m)','fontsize',14),ylabel('Y(m)','fontsize',14)
legend('UAV 1 (informed agent)', 'UAV 2', 'UAV 3','UAV 4', ...
    'Initial Position (UAV 1)', 'Initial Position (UAV 2)', ...
    'Initial Position (UAV 3)', 'Initial Position (UAV 4)', ...
    'Simulation (UAV 1)', 'Simulation (UAV 2)','Simulation (UAV 3)', ...
    'Simulation (UAV 4)')


% **********************
% Plot of distance
% **********************

n = size(x_traj,2);
m = size(x_traj,1);

dist = zeros(n);
dist(:,:) = NaN;

for t=1:m
for p=1:n
    for q=1:n
        if p~=q
            dist(p,q) = sqrt((x_traj(t,p)-x_traj(t,q))^2 + ...
                (y_traj(t,p)-y_traj(t,q))^2);
        else
            dist(p,q) = NaN;
        end
    end
end
    min_dist(:,t) = min(dist,[],2);
end

t = 0:DeltaT:DeltaT*(m-1);


figure(2) 
hold
plot(t,min_dist(1,:),'k',t,min_dist(2,:),'b',t,min_dist(3,:),'r',t,min_dist(4,:),'m')

% plot(t,min_dist(1,:),'-k','LineWidth',1.5)
% plot(t,min_dist(2,:),':k','LineWidth',1.5)
% plot(t,min_dist(3,:),'-k')
% plot(t,min_dist(4,:),'.-k')
% plot(t,min_dist(5,:),'--k')
% plot(t,min_dist(6,:),'-k')

grid on
title('Distance to the nearest neighbour')
xlabel('Time (s)','fontsize',14)
ylabel('Distance to the nearest neighbour (m)','fontsize',14)
legend('UAV 1 (informed agent)', 'UAV 2', 'UAV 3','UAV 4')


% ******************
% 3D Plot
% ******************

figure(3)
hold
plot3(UAV1_x, UAV1_y, -UAV1_z,'k','LineWidth',3)
plot3(UAV2_x, UAV2_y, -UAV2_z,'b','LineWidth',3)
plot3(UAV3_x, UAV3_y, -UAV3_z,'r','LineWidth',3)
plot3(UAV4_x, UAV4_y, -UAV4_z,'m','LineWidth',3)

plot3(-2,0,1,'sk','MarkerSize',8,'MarkerFaceColor','k','MarkerEdgeColor','k')
plot3(-2,2,1,'ob','MarkerSize',8,'MarkerFaceColor','b','MarkerEdgeColor','b')
plot3(0,2,1,'dr','MarkerSize',8,'MarkerFaceColor','r','MarkerEdgeColor','r')
plot3(-0.5,0.5,1,'^m','MarkerSize',8,'MarkerFaceColor','m','MarkerEdgeColor','m')

grid on
daspect([1 1 1])
title('3D Plot')
xlabel('X(m)','fontsize',14)
ylabel('Y(m)','fontsize',14)
zlabel('Z(m)','fontsize',14)
legend('UAV 1 (informed agent)', 'UAV 2', 'UAV 3','UAV 4')


% ***********
% Height
% ***********

figure(4)

hold
plot(t',-UAV1_z,'k','LineWidth',3)
plot(t',-UAV2_z,'b')
plot(t',-UAV3_z,'r')
plot(t',-UAV4_z,'m')

grid on
title('Height')
xlabel('Time (s)','fontsize',14)
ylabel('Height (m)','fontsize',14)
legend('UAV 1 (informed agent)', 'UAV 2', 'UAV 3','UAV 4')

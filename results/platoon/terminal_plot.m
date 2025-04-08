clc
clear
close all
A=[0,1,-0.800000000000000;0,0,-1;0,0,-1];
B=[0;0;1];
Q=[30,0,0;0,30,0;0,0,10];
R=10;
[P,~,~] = dare(A, B, Q, R);
%% following vehicle 1
subplot(3,1,1)
load('results_mpc\following_vehicle_1_mpc.mat') % 有终端代价
for i=1:size(mpc_1_x,1)
    J(i)=mpc_1_x(i,:)*P*mpc_1_x(i,:)';
end
plot(J,'LineWidth',2.0)
hold on
load('without_terminal\following_vehicle_1_mpc.mat') % 无终端代价
for i=1:size(mpc_1_x,1)
    J(i)=mpc_1_x(i,:)*P*mpc_1_x(i,:)';
end
plot(J,'-.','LineWidth',2.0)
% xlabel('time(s)', 'FontSize', 12, 'FontWeight', 'bold')
% ylabel('$x^TPx$', 'Interpreter', 'latex', 'FontSize', 12, 'FontWeight', 'bold')
legend('terminal','without terminal','FontWeight', 'bold')
title('following vehicle 1','FontWeight', 'bold')

%% following vehicle 2
subplot(3,1,2)
load('results_mpc\following_vehicle_2_mpc.mat') % 有终端代价
for i=1:size(mpc_2_x,1)
    J(i)=mpc_2_x(i,:)*P*mpc_2_x(i,:)';
end
plot(J,'LineWidth',2.0)
hold on
load('without_terminal\following_vehicle_2_mpc.mat') % 无终端代价
for i=1:size(mpc_2_x,1)
    J(i)=mpc_2_x(i,:)*P*mpc_2_x(i,:)';
end
plot(J,'-.','LineWidth',2.0)
% xlabel('time(s)', 'FontSize', 12, 'FontWeight', 'bold')
ylabel('$x^TPx$', 'Interpreter', 'latex', 'FontSize', 12, 'FontWeight', 'bold')
legend('terminal','without terminal','FontWeight', 'bold')
title('following vehicle 2','FontWeight', 'bold')

%% following vehicle 3
subplot(3,1,3)
load('results_mpc\following_vehicle_3_mpc.mat') % 有终端代价
for i=1:size(mpc_3_x,1)
    J(i)=mpc_3_x(i,:)*P*mpc_3_x(i,:)';
end
plot(J,'LineWidth',2.0)
hold on
load('without_terminal\following_vehicle_3_mpc.mat') % 无终端代价
for i=1:size(mpc_3_x,1)
    J(i)=mpc_3_x(i,:)*P*mpc_3_x(i,:)';
end
plot(J,'-.','LineWidth',2.0)
xlabel('time(s)', 'FontSize', 12, 'FontWeight', 'bold')
% ylabel('$x^TPx$', 'Interpreter', 'latex', 'FontSize', 12, 'FontWeight', 'bold')
legend('terminal','without terminal','FontWeight', 'bold')
title('following vehicle 3','FontWeight', 'bold')
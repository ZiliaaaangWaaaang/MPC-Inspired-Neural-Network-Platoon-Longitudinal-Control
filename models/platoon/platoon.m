function dxdt = platoon(t, x, u, a1_des)   
    h = 1.0;
    tau = 0.25;
    params = set_params();
    Ts=params.Ts;

    x1 = x(1);
    x2 = x(2);
    x3 = x(3);
    u1 = u(1);
%% 纵向
    dxdt = zeros(3, 1);
    dxdt(1) = x1 + Ts * x2 - Ts * h * x3;
    dxdt(2) = x2 - Ts * x3 + Ts * a1_des(t);
    dxdt(3) = (1 - Ts / tau) * x3 + Ts / tau * u1;

%% 串稳定性约束
%     alpha = 0.95;
% 
%     file_1 = 'D:\ZiliangWang\mpc_qrnet_longitudinal\results\platoon\results_nn\following_vehicle_1_nn.mat';
%     file_2 = 'D:\ZiliangWang\mpc_qrnet_longitudinal\results\platoon\results_nn\following_vehicle_2_nn.mat';
% 
%     if exist(file_1) == 2
%         load(file_1);
%     end
%     if exist(file_2) == 2
%         load(file_2);
%     end % 载入两辆跟随车加速度
% 
%     v1(1,:)=20;
%     disp(t);
%     v1(t+1,:) = v1(t,:)+a1_des(t)*params.Ts; % 第一辆跟随车的速度
%     v0(t)=nn_1_x(t,2)+v1(t); % 领航车的速度
%     v2(1)=20;
% 
%     if i == 2 % 对第二辆跟随车施加串稳定性约束
%         if dxdt(1) >= alpha * nn_1_x(t+1,1) % 对第二辆跟随车状态量进行更新
%             dxdt(1) = alpha * nn_1_x(t+1,1);
%             v2(t+1) = ((v1(t)-v2(t))*params.Ts-(dxdt(1)-x1))/h+v2(t); % 第二辆跟随车速度更新
%             dxdt(2) = v1(t+1) - v2(t+1);
% 
%         end
%     end
end
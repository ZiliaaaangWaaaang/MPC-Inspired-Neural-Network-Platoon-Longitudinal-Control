function params = set_params()
    %% System params
    params.ode = @platoon_ode;
    params.jac = @platoon_jac;
    %% Simulation params
    params.Ts = 0.1;
    params.Tmax = 100; % 决定NN_data数目/决定仿真步数
    params.tolerance = 5e-2;
    params.limit = 25; % 判断是否发散
    params.x0 = [0; 0; 0]; % 仅纵向
    params.D0 = 5;
    params.h = 0.8;
    %% MPC params
    params.Hp = 8; % 预测时域
    params.Hc = 8; % 控制时域
    params.Nx = 3; % 仅纵向
    params.Nu = 1;
    params.x_eq = zeros(params.Nx, 1); % 平衡点
    fp = @(u) platoon_fsv(params.x_eq, u);
    u_guess = zeros(params.Nu, 1);
    params.u_eq = fsolve(fp, u_guess, ...
        optimset('Display', 'off', 'Algorithm', 'levenberg-marquardt'));
    [A, B] = params.jac(params.x_eq, params.u_eq);
    params.A = A;
    params.B = B;
    params.Q = [30, 30, 10];
    params.R = 10;
    params.xmin = [-10, -2, -2];
    params.xmax = -params.xmin;
    params.umin = -2;
    params.umax = 2;
    params.u1max = params.umax(1);
    params.u1min = params.umin(1); % 加/减速度
    params.xmin = params.xmin - params.x_eq';
    params.xmax = params.xmax - params.x_eq';
    params.umin = params.umin - params.u_eq';
    params.umax = params.umax - params.u_eq';
    %% NN params
    params.nnrange = [20, 5, 2]; % 由约束决定，而不是由初始状态决定
    params.nnarch = [20, 10, 20]; % 隐含层及各层神经元个数
    params.maxepoch = 50; % 最大训练轮次/数据轨迹数
    params.ls = 1000; % 单次训练数据数目
end

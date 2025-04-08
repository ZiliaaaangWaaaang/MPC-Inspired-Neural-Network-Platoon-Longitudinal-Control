function [] = mpc_only(model)
    close all; clc; restoredefaultpath;    
    set_path(model);
    params = set_params();

    load('mpc', 'mpc_obj', 'x_mpc');
    Ts = mpc_obj.MPC.Ts;
    
    Tmax = params.Tmax;
    Q = diag(params.Q);
    R = params.R;
    %% 前车信息（加速度信息）
    a1_des=zeros(1,Tmax/Ts);
    phi_des=zeros(1,Tmax/Ts);
    %% driving condition
%     for t = 1:100
%         a1_des(t)=0;
%     end
%     for t = 100:200
%         a1_des(t)=-1/3;
%     end
%     for t = 200:350
%         a1_des(t)=0;
%     end
%     for t = 350:400
%         phi_des(t)=3/500*t-21/10;
%         a1_des(t)=-60/3.6*sin(phi_des(t))*3/500;
%     end
%     for t = 400:450
%         phi_des(t)=-3/500*t+27/10;
%         a1_des(t)=-60/3.6*sin(phi_des(t))*(-3/500);
%     end
%     for t = 450:1000
%         a1_des(t)=0;
%     end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    for t=1:100
        a1_des(t) = 0;
    end
    for t=100:200
        a1_des(t)=-1/30;
    end
    for t=300:350
        a1_des(t)=0;
    end
    for t=350:400
        a1_des(t)=0;
    end
%     load('a_des_df.mat');
%     a1_des = a_des_df;
    %% 跟随车控制量计算（mpc）
    for i=1:3 % 分别代表第1~3辆跟随车
        t_sol = zeros(Tmax/Ts+1 - params.Hp, 1);
        x_sol = zeros(Tmax/Ts+1 - params.Hp, params.Nx);
        u_sol = zeros(Tmax/Ts - params.Hp, params.Nu);
        J_sol = zeros(Tmax/Ts - params.Hp, params.Nu);
        elapsed = zeros(Tmax/Ts+1 - params.Hp, 1);
        i_sol = 1;
        t_sim = 0;
        x_sim = params.x0;
        ref = zeros(2*params.Nx, 1);
    
        mpcmove(mpc_obj, x_mpc, [], ref, []);
        while i_sol < Tmax / Ts
            tic;
            t_sol(i_sol) = t_sim;
            x_sol(i_sol, :) = x_sim;
            x_mpc.Plant = x_sim;
            
            u = mpcmove(mpc_obj, x_mpc, [], ref, []) + params.u_eq;
            elapsed(i_sol) = toc;
    
            u_sol(i_sol, :) = u;
            J_sol(i_sol, :) = x_sol(i_sol, :)*Q*x_sol(i_sol, :)'+u_sol(i_sol, :)'*R*u_sol(i_sol, :);

            if i>=2
                i = i - 1;
                filename = sprintf('results/platoon/results_mpc/following_vehicle_%d_mpc.mat', i);
                loaded_data = load(filename);
                x_data = loaded_data.(['mpc_', num2str(i), '_x']);
                a1_des = x_data(:,3);
                i = i + 1;
            end
    
            dxdt = params.ode(i_sol, x_sim, u, a1_des); % 输入当前时刻状态量,dxdt表示下一时刻状态量
            x_sim = dxdt; % 将下一时刻状态量赋给x_sim
            i_sol = i_sol + 1;
        
            if norm(x_sim, 2) > params.limit
                fprintf('System diverged. Abort at %.2f.\n', norm(x_sim, 2)); % 系统发散，终止于...
                break
            end
        end
        t_sol(i_sol) = t_sim;
        x_sol(i_sol, :) = x_sim;
        disp('norm(x_sim, 2)=');
        disp(norm(x_sim, 2));
        success = i_sol > Tmax / Ts - params.Hp && norm(x_sim, 2) <= params.tolerance;
        if success
            disp(['mpc_',num2str(i), ' finished.']);
        else
            disp(['mpc_',num2str(i), ' failed.']);
        end
        
        %% 变量存储
        % 为每个变量创建结构体
        data_struct = struct();
        data_struct.(['mpc_', num2str(i), '_t']) = t_sol(1:i_sol, :);
        data_struct.(['mpc_', num2str(i), '_x']) = x_sol(1:i_sol, :);
        data_struct.(['mpc_', num2str(i), '_u']) = u_sol(1:i_sol-1, :);
        data_struct.(['mpc_', num2str(i), '_J']) = J_sol(1:i_sol-1, :);
        data_struct.(['mpc_', num2str(i), '_elapsed']) = elapsed(1:i_sol-1, :);
    
        % 保存数据到单独的 MAT 文件中，指定变量名前缀
        save(sprintf('results/%s/results_mpc/following_vehicle_%d_mpc.mat', model, i), ...
             '-struct', 'data_struct');
    end
end

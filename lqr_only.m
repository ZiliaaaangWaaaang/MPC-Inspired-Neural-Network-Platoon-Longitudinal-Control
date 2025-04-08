%% 本程序使用lqr进行求解
function [] = lqr_only(model)
    close all; clc; restoredefaultpath;
    set_path(model);
    params = set_params();
    load('lqr', 'K');

    Ts = params.Ts;   
    Tmax = params.Tmax;
    Q = diag(params.Q);
    R = params.R;

    %% 前车信息（加速度信息）
    a1_des=zeros(1,Tmax/Ts);
%     for t=1:100
%         a1_des(t) = 0;
%     end
%     for t=100:400
%         a1_des(t)=0.5;
%     end
%     for t=400:500
%         a1_des(t)=0;
%     end
%     for t=500:800
%         a1_des(t)=-0.5;
%     end
%     for t=800:Tmax/Ts
%         a1_des(t)=0;
%     end

    %% 跟随车控制量计算（lqr）
    for i=1:3 % 分别代表第1~3辆跟随车
        t_sol = zeros(Tmax/Ts+1 - params.Hp, 1);
        x_sol = zeros(Tmax/Ts+1 - params.Hp, params.Nx);
        u_sol = zeros(Tmax/Ts - params.Hp, params.Nu);
        J_sol = zeros(Tmax/Ts - params.Hp, params.Nu);
        elapsed = zeros(Tmax/Ts+1 - params.Hp, 1);  % 计算时间
        i_sol = 1;
        t_sim = 0;
        x_sim = params.x0;

        while i_sol < Tmax / Ts - params.Hp
            t_sol(i_sol) = t_sim;
            x_sol(i_sol, :) = x_sim;
            
            tic;
            u = -K*x_sim + params.u_eq;
            elapsed(i_sol) = toc;
    
            u_sol(i_sol, :) = u;
            J_sol(i_sol, :) = x_sol(i_sol, :)*Q*x_sol(i_sol, :)'+u_sol(i_sol, :)'*R*u_sol(i_sol, :);
    
            if i>=2
                i=i-1;
                filename = sprintf('results/platoon/results_lqr/following_vehicle_%d_lqr.mat', i);
                loaded_data = load(filename);
                x_data = loaded_data.(['lqr_', num2str(i), '_x']);
                a1_des=x_data(:,3);
                i=i+1;
            end
    
            dxdt=params.ode(i_sol,x_sim,u,a1_des); % 输入当前时刻状态量,dxdt表示下一时刻状态量
    %         [~, x] = ode45(@(i_sol, y) params.ode(i_sol, y, u), [t_sim, t_sim+Ts], x_sim);
            x_sim = dxdt; % 将下一时刻状态量赋给x_sim
            i_sol=i_sol+1;
            
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
            disp(['lqr_',num2str(i), ' finished.']);
        else
            disp(['lqr_',num2str(i), ' failed.']);
        end
    
        %% 变量存储
        % 为每个变量创建结构体
        data_struct = struct();
        data_struct.(['lqr_', num2str(i), '_t']) = t_sol(1:i_sol, :);
        data_struct.(['lqr_', num2str(i), '_x']) = x_sol(1:i_sol, :);
        data_struct.(['lqr_', num2str(i), '_u']) = u_sol(1:i_sol-1, :);
        data_struct.(['lqr_', num2str(i), '_J']) = J_sol(1:i_sol-1, :);
        data_struct.(['lqr_', num2str(i), '_elapsed']) = elapsed(1:i_sol-1, :);
    
        % 保存数据到单独的 MAT 文件中，指定变量名前缀
        save(sprintf('results/%s/results_lqr/following_vehicle_%d_lqr.mat', model, i), ...
             '-struct', 'data_struct');
    end
end

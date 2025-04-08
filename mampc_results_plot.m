%% 该程序用于绘制仿真结果
clear
close all
set_path platoon
load('results\platoon\results_mpc\following_vehicle_1_mpc.mat')
load('results\platoon\results_mpc\following_vehicle_2_mpc.mat')
load('results\platoon\results_mpc\following_vehicle_3_mpc.mat')

load('results\platoon\results_nn\following_vehicle_1_nn.mat')
load('results\platoon\results_nn\following_vehicle_2_nn.mat')
load('results\platoon\results_nn\following_vehicle_3_nn.mat')

params = set_params();
Ts = params.Ts;
Tmax = params.Tmax;

for t1=size(mpc_1_elapsed,1):Tmax/Ts
    mpc_1_elapsed(t1)=0;
    mpc_1_x(t1,:)=0;
    mpc_1_u(t1)=0;
    mpc_1_t(t1)=mpc_1_t(t1-1)+Ts;

    mpc_2_elapsed(t1)=0;
    mpc_2_x(t1,:)=0;
    mpc_2_u(t1)=0;
    mpc_2_t(t1)=mpc_2_t(t1-1)+Ts;

    mpc_3_elapsed(t1)=0;
    mpc_3_x(t1,:)=0;
    mpc_3_u(t1)=0;
    mpc_3_t(t1)=mpc_3_t(t1-1)+Ts;
end

for t3=size(nn_1_elapsed,1):Tmax/Ts
    nn_1_elapsed(t3)=0;
    nn_1_x(t3,:)=0;
    nn_1_u(t3)=0;
    nn_1_t(t3)=nn_1_t(t3-1)+Ts;

    nn_2_elapsed(t3)=0;
    nn_2_x(t3,:)=0;
    nn_2_u(t3)=0;
    nn_2_t(t3)=nn_2_t(t3-1)+Ts;

    nn_3_elapsed(t3)=0;
    nn_3_x(t3,:)=0;
    nn_3_u(t3)=0;
    nn_3_t(t3)=nn_3_t(t3-1)+Ts;
end

%% 仅纵向（x1-x2-x3）算法之间的对比
figure
tt=0:0.1:99.9;
plot(tt,mpc_1_x(:,1),'LineWidth',2.0,'Color',[0 0.4470 0.7410])
hold on
plot(tt,nn_1_x(:,1),'-.','LineWidth',2.0,'Color',[0.8500 0.3250 0.0980])
grid on
% yline(0, 'k--', 'LineWidth', 2.0)
xlabel('t(s)', 'Interpreter', 'latex', 'FontSize', 12, 'FontWeight', 'bold')
ylabel('$e^x$(m)', 'Interpreter', 'latex', 'FontSize', 12, 'FontWeight', 'bold')
legend('MPC','NN-MPC', 'Interpreter', 'latex','location','northeast','FontWeight', 'bold')

figure
plot(tt,mpc_1_x(:,2),'LineWidth',2.0,'Color',[0 0.4470 0.7410])
hold on
plot(tt,nn_1_x(:,2),'-.','LineWidth',2.0,'Color',[0.8500 0.3250 0.0980])
grid on
% yline(0, 'k--', 'LineWidth', 2.0)
xlabel('t(s)', 'Interpreter', 'latex', 'FontSize', 12, 'FontWeight', 'bold')
ylabel('$e^v$(m/s)', 'Interpreter', 'latex', 'FontSize', 12, 'FontWeight', 'bold')
legend('MPC','NN-MPC', 'Interpreter', 'latex','location','northeast','FontWeight', 'bold')

%% 仅纵向（u1）算法之间的对比
figure
plot(mpc_1_u(:,1),'LineWidth',2.0,'Color',[0 0.4470 0.7410])
hold on
plot(nn_1_u(:,1),'-.','LineWidth',2.0,'Color',[0.8500 0.3250 0.0980])
grid on
xlabel('t(s)', 'Interpreter', 'latex', 'FontSize', 12, 'FontWeight', 'bold')
ylabel('u$(m/s^2)$', 'Interpreter', 'latex', 'FontSize', 12, 'FontWeight', 'bold')
legend('MPC','NN-MPC', 'Interpreter', 'latex','location','northeast','FontWeight', 'bold')

%% 车辆编队(1辆领航车，1辆跟随车)
tt=0:0.1:99.9;
%% 计算时间对比
figure
plot(tt(1:990),mpc_1_elapsed(11:1000)*1e3,'LineWidth',1.5,'Color',[0 0.4470 0.7410])
hold on
plot(tt(1:990),nn_1_elapsed(11:1000)*1e3,'-.','LineWidth',1.5,'Color',[0.8500 0.3250 0.0980])
% zp = BaseZoom();
% zp.plot;
ylim([0 2.0]);
grid on
xlabel('t(s)', 'Interpreter', 'latex', 'FontSize', 12, 'FontWeight', 'bold')
ylabel('\fontname{宋体}计算时间\fontname{Times new roman}(ms)', 'FontSize', 12)
legend('MPC','NN-MPC', 'Interpreter', 'latex','location','northeast','FontWeight', 'bold')

%% 前车加速度信息
figure
plot(tt,nn_1_x(:,1),'LineWidth',2.0,'Color',[0 0.4470 0.7410])
hold on
plot(tt,nn_2_x(:,1),'-.','LineWidth',2.0,'Color',[0.8500 0.3250 0.0980])
hold on
plot(tt,nn_3_x(:,1),'--','LineWidth',2.0,'Color',[0.4660 0.6740 0.1880])
% yline(0, 'k--', 'LineWidth', 2.0)
grid on
xlabel('t(s)', 'Interpreter', 'latex', 'FontSize', 12, 'FontWeight', 'bold')
ylabel('$e^x(m)$', 'Interpreter', 'latex', 'FontSize', 12, 'FontWeight', 'bold')
legend('\fontname{宋体}领航车-\fontname{宋体}跟随车\fontname{Times new roman}1','\fontname{宋体}跟随车\fontname{Times new roman}1-\fontname{宋体}跟随车\fontname{Times new roman}2','\fontname{宋体}跟随车\fontname{Times new roman}2-\fontname{宋体}跟随车\fontname{Times new roman}3','location','southeast')

figure
plot(tt,nn_1_x(:,2),'LineWidth',2.0,'Color',[0 0.4470 0.7410])
hold on
plot(tt,nn_2_x(:,2),'-.','LineWidth',2.0,'Color',[0.8500 0.3250 0.0980])
hold on
plot(tt,nn_3_x(:,2),'--','LineWidth',2.0,'Color',[0.4660 0.6740 0.1880])
% yline(0, 'k--', 'LineWidth', 2.0)
grid on
xlabel('t(s)', 'Interpreter', 'latex', 'FontSize', 12, 'FontWeight', 'bold')
ylabel('$e_v(m/s)$', 'Interpreter', 'latex', 'FontSize', 12, 'FontWeight', 'bold')
legend('\fontname{宋体}领航车-\fontname{宋体}跟随车\fontname{Times new roman}1','\fontname{宋体}跟随车\fontname{Times new roman}1-\fontname{宋体}跟随车\fontname{Times new roman}2','\fontname{宋体}跟随车\fontname{Times new roman}2-\fontname{宋体}跟随车\fontname{Times new roman}3','location','northeast')

% load('D:\ZiliangWang\mpc_qrnet_longitudinal\a_des_df.mat'); % 真实驾驶数据
% a1_des=a_des_df(1:1000);
a1_des=zeros(1,Tmax/Ts);phi_des=zeros(1,Tmax/Ts);
%% driving condition 1
% for t=1:100
%     a1_des(t) = 0;
% end
% for t=100:200
%     a1_des(t)=-1/3;
% end
% for t=200:350
%     a1_des(t)=0;
% end
% for t=350:400
%     phi_des(t)=3/500*t-21/10;
%     a1_des(t)=-60/3.6*sin(phi_des(t))*3/500;
% end
% for t=400:450
%     phi_des(t)=-3/500*t+27/10;
%     a1_des(t)=-60/3.6*sin(phi_des(t))*-(3/500);
% end
% for t=450:1000
%     a1_des(t)=0;
% end

%% driving condition 2
for t = 1:100
    a1_des(t)=0;
end
for t = 100:200
    a1_des(t)=2/9;
end
for t = 200:350
    a1_des(t)=0;
end
for t = 350:400
    phi_des(t)=3/500*t-21/10;
    a1_des(t)=-60/3.6*sin(phi_des(t))*3/500;
end
for t = 400:450
    phi_des(t)=-3/500*t+27/10;
    a1_des(t)=-60/3.6*sin(phi_des(t))*(-3/500);
end
for t = 450:1000
    a1_des(t)=0;
end

v1=zeros(1,Tmax/Ts);
v2=zeros(1,Tmax/Ts);
v3=zeros(1,Tmax/Ts);
v4=zeros(1,Tmax/Ts);
v1(1)=20;
v2(1)=20;
v3(1)=20;
v4(1)=20;

s4(1)=0;
s3(1)=s4(1)+nn_3_x(1,1)+(params.D0+params.h*v4(1));
s2(1)=s3(1)+nn_2_x(1,1)+(params.D0+params.h*v3(1));
s1(1)=s2(1)+nn_1_x(1,1)+(params.D0+params.h*v2(1));

for t=2:Tmax/Ts
    v1(t)=v1(t-1)+a1_des(t)*0.1;
    v2(t)=v1(t)-nn_1_x(t,2);
    v3(t)=v2(t)-nn_2_x(t,2);
    v4(t)=v3(t)-nn_3_x(t,2);

    s1(t)=s1(t-1)+v1(t-1)*0.1+1/2*a1_des(t)^2;
    s2(t)=s1(t)-nn_1_x(t,1)-(params.D0+params.h*v2(t));
    s3(t)=s2(t)-nn_2_x(t,1)-(params.D0+params.h*v3(t));
    s4(t)=s3(t)-nn_3_x(t,1)-(params.D0+params.h*v4(t));
end

figure
plot(tt,a1_des,'LineWidth',2.0,'Color',[0 0.4470 0.7410])
hold on
plot(tt,nn_1_x(:,3),'-.','LineWidth',2.0,'Color',[0.8500 0.3250 0.0980])
hold on
plot(tt,nn_2_x(:,3),'--','LineWidth',2.0,'Color',[0.4660 0.6740 0.1880])
hold on
plot(tt,nn_3_x(:,3),':','LineWidth',2.0, 'Color', [0.6350 0.0780 0.1840])
grid on
xlabel('t(s)', 'Interpreter', 'latex', 'FontSize', 12, 'FontWeight', 'bold')
ylabel('a$(m/s^2)$', 'Interpreter', 'latex', 'FontSize', 12, 'FontWeight', 'bold')
legend('\fontname{宋体}领航车','\fontname{宋体}跟随车1','\fontname{宋体}跟随车\fontname{Times new roman}2','\fontname{宋体}跟随车\fontname{Times new roman}3','location','northeast')

figure
plot(tt,v1,'LineWidth',2.0,'Color',[0 0.4470 0.7410])
hold on
plot(tt,v2,'-.','LineWidth',2.0,'Color',[0.8500 0.3250 0.0980])
hold on
plot(tt,v3,'--','LineWidth',2.0,'Color',[0.4660 0.6740 0.1880])
hold on
plot(tt,v4,':','LineWidth',2.0, 'Color', [0.6350 0.0780 0.1840])
grid on
xlabel('t(s)', 'Interpreter', 'latex', 'FontSize', 12, 'FontWeight', 'bold')
ylabel('v$(m/s)$', 'Interpreter', 'latex', 'FontSize', 12, 'FontWeight', 'bold')
legend('\fontname{宋体}领航车','\fontname{宋体}跟随车1','\fontname{宋体}跟随车\fontname{Times new roman}2','\fontname{宋体}跟随车\fontname{Times new roman}3','location','northeast')

figure
plot(tt,s1,'LineWidth',2.0,'Color',[0 0.4470 0.7410])
hold on
plot(tt,s2,'-.','LineWidth',2.0,'Color',[0.8500 0.3250 0.0980])
hold on
plot(tt,s3,'--','LineWidth',2.0,'Color',[0.4660 0.6740 0.1880])
hold on
plot(tt,s4,':','LineWidth',2.0, 'Color', [0.6350 0.0780 0.1840])
grid on
xlabel('t(s)', 'Interpreter', 'latex', 'FontSize', 12, 'FontWeight', 'bold')
ylabel('s$(m)$', 'Interpreter', 'latex', 'FontSize', 12, 'FontWeight', 'bold')
legend('\fontname{宋体}领航车','\fontname{宋体}跟随车\fontname{Times new roman}1','\fontname{宋体}跟随车\fontname{Times new roman}2','\fontname{宋体}跟随车\fontname{Times new roman}3','location','southeast')

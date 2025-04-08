%% 此程序用于绘制样本图
clear
close all
load('data\platoon\nndata.mat');
row_X=size(X,1);

%% 仅纵向
% for i=1:size(X,1)
%     i
%     scatter3(X(i,1),X(i,2),X(i,3),30,'.');
%     grid on;
%     xlabel('$e^x_i$', 'Interpreter', 'latex', 'FontSize', 16, 'FontWeight', 'bold')
%     ylabel('$e^v_i$', 'Interpreter', 'latex', 'FontSize', 16, 'FontWeight', 'bold')
%     zlabel('$a_i$', 'Interpreter', 'latex', 'FontSize', 16, 'FontWeight', 'bold')
%     hold on
% end
figure
scatter3(X(:,1),X(:,2),X(:,3),30,'.');
axis([-20 20 -10 10 -2 2]);
hold on
scatter3(X(:,1), X(:,2),-2*ones(row_X,1),10,'.','MarkerEdgeColor',[0.75 0.75 0.75],'MarkerFaceColor',[0.75 0.75 0.75]);
scatter3(X(:,1), 10*ones(row_X,1),X(:,3),10,'.','MarkerEdgeColor',[0.75 0.75 0.75],'MarkerFaceColor',[0.75 0.75 0.75]);
scatter3(20*ones(row_X,1), X(:,2),X(:,3),10,'.','MarkerEdgeColor',[0.75 0.75 0.75],'MarkerFaceColor',[0.75 0.75 0.75]);
xlabel('$e^x_i$', 'Interpreter', 'latex', 'FontSize', 16, 'FontWeight', 'bold')
ylabel('$e^v_i$', 'Interpreter', 'latex', 'FontSize', 16, 'FontWeight', 'bold')
zlabel('$a_i$', 'Interpreter', 'latex', 'FontSize', 16, 'FontWeight', 'bold')

% figure
% scatter3(X(:,1),X(:,2),X(:,3),30,'.');
% view(0,0);
% xlabel('$e^x_i$', 'Interpreter', 'latex', 'FontSize', 16, 'FontWeight', 'bold')
% ylabel('$e^v_i$', 'Interpreter', 'latex', 'FontSize', 16, 'FontWeight', 'bold')
% zlabel('$a_i$', 'Interpreter', 'latex', 'FontSize', 16, 'FontWeight', 'bold')
% 
% figure
% scatter3(X(:,1),X(:,2),X(:,3),30,'.');
% view(90,0);
% xlabel('$e^x_i$', 'Interpreter', 'latex', 'FontSize', 16, 'FontWeight', 'bold')
% ylabel('$e^v_i$', 'Interpreter', 'latex', 'FontSize', 16, 'FontWeight', 'bold')
% zlabel('$a_i$', 'Interpreter', 'latex', 'FontSize', 16, 'FontWeight', 'bold')

%%
% ii=1;nn=0;
% for i=1:size(X,1)
%     if(norm(X(i,:),2)<=0.051)
%         xx(ii,:)=norm(X(i,:),2);
%         ii=ii+1;
%     end
% end
% uu=0.01+0.09*(rand(size(xx,1),1));
% scatter(uu,xx)
% xlim([0.005,0.2])
% ax = gca;
% ax.XScale = 'log';
function y = platoon_fsv(x, u)
    h = 1.0;
    a1_des = 0;

    x1 = x(1);
    x2 = x(2);
    x3 = x(3);
    u1 = u(1);
    
%% 纵向
    y = zeros(2, 1);
    y(1) = x2 - h*x3;
    y(2) = -x3 + a1_des;
end
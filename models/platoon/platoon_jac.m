function [A, B] = platoon_jac(x, u)
    h = 1.0;
    tau = 0.25;

    x1 = x(1);
    x2 = x(2);
    x3 = x(3);

%% 纵向
    A = zeros(3,3);
    A(1, :) = [0 1 -h];
    A(2, :) = [0 0 -1];
    A(3, :) = [0 0 -1/tau];

    B = zeros(3,1);
    B(1, :) = 0;
    B(2, :) = 0;
    B(3, :) = 1/tau;
end

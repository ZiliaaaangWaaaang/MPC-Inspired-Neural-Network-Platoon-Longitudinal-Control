clear;
syms h tau a1_des
syms x1 x2 x3
syms u1;

%% 纵向
A = jacobian([x1, x2, x3], ...
             [x1, x2, x3]);
B = jacobian([x1, x2, x3], ...
             u1);
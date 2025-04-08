function dydt = platoon_ode(t, y, u, a1_des)
    dydt = platoon(t, y, u, a1_des);
end
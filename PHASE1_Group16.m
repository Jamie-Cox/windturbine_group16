%Q4 steady flight sim
x_zero_fuel = 10.14;
x_fuel_tank = 10.06;
rho_0 = 1.225;
s_ref = 73.73;
%cg 0
steady_flight_emptyANDpayload = (13434.8 + 1081.8) * 0.45359237;
steady_flight_cg0_fuel = [3376.50000000000	3371.10000000000	3364.40000000000	3330.80000000000 4042	4026	4005	3984]* 0.45359237;
steady_flight_cg0_weight = (steady_flight_emptyANDpayload  + steady_flight_cg0_fuel).* 9.81;
steady_flight_cg0_xCG =( (steady_flight_emptyANDpayload).*x_zero_fuel + steady_flight_cg0_fuel .*x_fuel_tank )./ (steady_flight_cg0_fuel + steady_flight_emptyANDpayload);

steady_flight_cg0_Vi = [181	156	105	315 220   180   160   140]./ 1.943844;
steady_flight_cg0_CL = (2.*steady_flight_cg0_weight)./(rho_0.*s_ref .* (steady_flight_cg0_Vi).^2);

steady_flight_cg0_iH = [0.3500   -0.1100   -1.4200    1.1400 0.6300    0.2300   -0.0300   -0.3000];
%cg -6
steady_flight_cgneg6_fuel = [4114.80000000000	4143	4132.10000000000	4126.10000000000 3930.10000000000	3916.80000000000	3904.40000000000	3890.40000000000]* 0.45359237;
steady_flight_cgneg6_weight = (steady_flight_emptyANDpayload  + steady_flight_cgneg6_fuel).* 9.81;
steady_flight_cgneg6_xCG =( (steady_flight_emptyANDpayload).*x_zero_fuel + steady_flight_cgneg6_fuel .*x_fuel_tank )./ (steady_flight_cgneg6_fuel + steady_flight_emptyANDpayload);

steady_flight_cgneg6_Vi = [112   165   140   131 220   180   160   140]./ 1.943844;
steady_flight_cgneg6_CL = (2.*steady_flight_cgneg6_weight)./(rho_0.*s_ref .* (steady_flight_cgneg6_Vi).^2);

steady_flight_cgneg6_iH = [-1.7000   -0.3000   -0.7500   -0.9900 0.5200   -0.0100   -0.2600   -0.6300];
%cg6
steady_flight_cg6_fuel = [3586.10000000000	3580.40000000000	3575.30000000000	3561.20000000000	3705	3982.50000000000	3903.70000000000	3860	3830.60000000000]* 0.45359237;
steady_flight_cg6_weight = (steady_flight_emptyANDpayload  + steady_flight_cg6_fuel).* 9.81;
steady_flight_cg6_xCG =( (steady_flight_emptyANDpayload).*x_zero_fuel + steady_flight_cg6_fuel .*x_fuel_tank )./ (steady_flight_cg6_fuel + steady_flight_emptyANDpayload);
steady_flight_cg6_Vi = [180   130   161   234   182   218   180   160   140]./ 1.943844;
steady_flight_cg6_CL = (2.*steady_flight_cg6_weight)./(rho_0.*s_ref .* (steady_flight_cg6_Vi).^2);
steady_flight_cg6_iH = [0.5100   -0.3800    0.2100    0.8400    2.4500    0.7300    0.3800    0.1800         0];

new_cg6_cl = [0.3006    0.3446    0.3994    0.4684    0.2738    0.2510    0.2157    0.1996];
new_cg6_ih = [-0.1400    0.0400   -0.3900   -0.1800    0.0900    0.2000    0.2100    0.6600];

new_cg0_ih =[0.750000000000000	0.430000000000000	0.410000000000000	0.230000000000000	0.0800000000000000	-0.0300000000000000	-0.150000000000000	-0.350000000000000	-0.230000000000000	-0.630000000000000	-0.660000000000000	-0.920000000000000];
new_cg0_cl = [0.0922661770000000	0.154521130000000	0.170220866000000	0.188413402000000	0.209672358000000	0.234958282000000	0.265171705000000	0.301531080000000	0.311225650000000	0.357173672000000	0.420507351000000	0.485811783000000];

new_cgneg6_ih = [-0.2500   -0.2100   -0.9200   -1.1100];
new_cgneg6_cl = [0.2995    0.3436    0.3982    0.4671];


line_best_fit_cg0=polyfit(steady_flight_cg0_CL,steady_flight_cg0_iH,1);
line_best_fit_cgneg6=polyfit(steady_flight_cgneg6_CL,steady_flight_cgneg6_iH,1);
line_best_fit_cg6=polyfit(steady_flight_cg6_CL,steady_flight_cg6_iH,1);

line_best_fit_newcg6=polyfit(new_cg6_cl,new_cg6_ih,1);
line_best_fit_newcg0=polyfit(new_cg0_cl,new_cg0_ih,1);
line_best_fit_newcgneg6=polyfit(new_cgneg6_cl,new_cgneg6_ih,1);


scatter(new_cg0_cl,new_cg0_ih,"r")
hold on
plot(linspace(0,0.7), polyval(line_best_fit_newcg0,linspace(0,0.7)),"r")
scatter(new_cgneg6_cl,new_cgneg6_ih,"b")
plot(linspace(0,0.7), polyval(line_best_fit_newcgneg6,linspace(0,0.7)),"b")
scatter(new_cg6_cl,new_cg6_ih,"g")
plot(linspace(0,0.7), polyval(line_best_fit_newcg6,linspace(0,0.7)),"g")
legend("cg0: data", "cg0: best fit line","cg-6: data", "cg-6: best fit line","cg6: data", "cg6: best fit line")
hold off
title("Tailplane deflection vs lift coefficient")
xlabel("CL")
ylabel("iH (degrees)")
%PHASE1_Group16 Wind Turbine

design_speed = 10; %m/s
TSR =3; %approximated to start with (must be between 3-8)
R=210; %mm
alpha_des=4.227; %deg
Cl_des= 1.146; %linearly approximated
B=2; %number of blades (left as standard to begin with)
A=pi*((R+15)*10^-3)^2 %area including the hub


omega = (TSR*design_speed)/(R*10^-3);

%optimum distribution

r=[0:0.1:1]; %radial 
cr_optimum=(16*pi*R^2)./(9*B*TSR*r*Cl_des);

plot(r,cr_optimum)
title('Blade Chord Distribution plot')
xlabel('Radial Coordinate (r)')
ylabel('Blade Chord Distribution c(r)')




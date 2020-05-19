%PHASE1_Group16 Wind Turbine

design_speed = 10; %m/s
TSR =3; %approximated to start with (must be between 3-8)
R=210; %mm
alpha_des=4.227; %deg
Cl_des= 1.146; %linearly approximated
B=2; %number of blades (left as standard to begin with)


omega = (TSR*design_speed)/(R*10^-3);


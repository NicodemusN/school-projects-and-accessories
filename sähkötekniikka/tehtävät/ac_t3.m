% MATLAB tiedosto
% Vaihtosähkö tehtävä 3

R_1 = 20;
R_2 = 20;
C = 0.7*10^(-6);
U = 10;
f = 1000;

Z_C = 1/(2*pi*f*C*1j);
Z = Z_C + R_1 + R_2;

I = U / Z;
I_len = abs(I)
I_ang = rad2deg(angle(I))

cos_phi = cos(angle(I))

U_R1 = R_1 * I_len
U_R2 = R_2 * I_len
U_C = abs(Z_C) * I_len
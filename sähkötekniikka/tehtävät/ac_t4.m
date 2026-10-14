% MATLAB tiedosto
% Vaihtosähkö tehtävä 4

E = 230;
f = 50;
R = 180;
L = 0.8;
C = 30*10^(-6);

Z_L = 1j*2*pi*f*L;
Z_C = 1/(1j*2*pi*f*C);

Z_1 = R+Z_L;
Z_tot = ((Z_1)^(-1) + (Z_C)^(-1))^(-1);

Z_len = abs(Z_tot);
Z_ang = rad2deg(angle(Z_tot));

I = E / Z_tot;
I_len = abs(I);
I_ang = rad2deg(angle(I));

I_1 = E / Z_1;
I_1len = abs(I_1);
I_1ang = rad2deg(angle(I_1));

I_2 = E / Z_C;
I_2len = abs(I_2);
I_2ang = rad2deg(angle(I_2));

cos_phi = cos(angle(I))

U_R = I_1 * R;
U_L = I_1 * Z_L;
U_C = I_2 * Z_C;

S = abs(E*I)
P = abs(E*I*cos_phi)
Q = abs(E*I*sin(angle(I)))

disp("Kokonaisimpedanssin suuruus on " + Z_len + " ja kulma " + Z_ang)
disp(" ")
disp("Virta I on " + I_len + " kulmassa " + I_ang)
disp("Virta I_1 on " + I_1len + " kulmassa " + I_1ang)
disp("Virta I_2 on " + I_2len + " kulmassa " + I_2ang)
disp(" ")
disp("Jännite U_R on " + abs(U_R) + " kulmassa " + rad2deg(angle(U_R)))
disp("Jännite U_L on " + abs(U_L) + " kulmassa " + rad2deg(angle(U_L)))
disp("Jännite U_C on " + abs(U_C) + " kulmassa "+ rad2deg(angle(U_C)))
disp(" ")
disp("Tehokerroin cos_phi on " + cos_phi)
disp(" ")
disp("Näennäisteho S on " + S + " VA")
disp("Pätöteho P on " + P + " W")
disp("Loisteho Q on " + Q + " var")



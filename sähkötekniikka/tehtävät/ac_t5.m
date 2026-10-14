% MATLAB tiedosto
% Vaihtosähkö tehtävä 5

E = 230;
f = 50;
R = 12;
L = 0.06;

Z_R = 12;
Z_L = 1j*2*pi*f*L;
Z = Z_R + Z_L;
phi = angle(I);
I = E/Z
u_hat = E*sqrt(2)

disp("a)")
disp("Jännitteen huippuarvo on " + u_hat + " V")
disp("b)")
disp("Piirin virta I on " + abs(I) + " A kulmassa " + rad2deg(angle(I)))
disp("c)")
disp("Piirin reaktanssi X on " + Z_L + " ohm")
disp("d)")
disp("Piirin impedanssi Z on " + abs(Z) + " ohm kulmassa " + rad2deg(angle(Z)))
disp("e)")
disp("Tehokerroin cos_phi on " + cos(phi))
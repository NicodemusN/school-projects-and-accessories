% MATLAB tiedosto
% Vaihtosähkö tehtävä 6

E = 230;
f = 50;
phi = deg2rad(40);
I = 12;

% tässä on jotain pielessä !!!
X_L = sin(phi)*12;
L = X_L / 2*pi*f;

S = E * I;
P = E * I * cos(phi);
Q = E * I * sin(phi);

disp("a)")
disp("Tehokerroin cos_phi on " + cos(phi))
disp("b)")
disp("Reaktanssi X_L on " + abs(X_L) + " ohm ja induktanssi " + L + " H")
disp("c)")
disp("Pätöteho on " + P + " W, loisteho on " + Q + " var ja näennäisteho on " + S + " VA")

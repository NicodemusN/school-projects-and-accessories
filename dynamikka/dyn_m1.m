% MATLAB tiedosto
% Dynamiikka syyslomamoniste
% Johdanto 1.

e = exp(1);
t_2 = 2;
x = 400;
t = 16.9;
v = 30.686*(1-e^((-1/4)*t));
a = 7.6715*e^(-t/4);
a_2 = 7.6715*e^(-t_2/4);
a_avg = 30.686/16.9;
x_1 = (1/2)*a_avg*t^2;

disp("Keskikiihtyvyys koko matkalla: " + a_avg + " m/s^2")
disp("Kiihtyvyys ajan hetkellä t=2: " + a_2 + " m/s^2")
disp("Kuljettu matka: " + x_1 + " m")

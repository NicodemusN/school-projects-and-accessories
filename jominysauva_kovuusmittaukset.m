% MATLAB tiedosto
% Älä avaa vscodessa, käytä MATLABin nettisivustoa tai tietokoneelle
% asennettua ohjelmistoa.

% Vickers-laitteen data
hardness = [523.3 484.7 439.1 404.4 364.2 352.2 333.3 305.4 296.9 287.2]
distance = [0 1.5 3 5 7 10 15 20 25 30]

% Rockwell-laitteen data
hardness1 = [50.1 52.1 51 50.4 49.2 47.4 45.8 43.7 38.2 34.9 32.9 31.8 30.9 30.6]
distance1 = [1.5 3 5 7 9 11 13 15 20 25 30 35 40 45]

% Vickers taulukko
hFig1 = figure("Name", "Vickers-kovuudet")
plot(distance, hardness)
grid on
title("Vickers kovuudet")
xlabel("Etäisyys (mm)")
ylabel("Kovuus (HV)")
xlim([0 30])
ylim([0 550])

% Rockwell taulukko
hFig2 = figure("Name", "Rockwell-kovuudet")
plot(distance1, hardness1)
grid on
title("Rockwell kovuudet")
xlabel("Etäisyys (mm)")
ylabel("Kovuus (HRC)")
xlim([0 45])
ylim([0 60])
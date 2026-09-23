% MATLAB tiedosto
% Laskee automaattisesti arvoja sarjaan kytketyn vastus-kondensaattori-kela
% piirin suureille.

% lähtöarvot, tässä esimerkkinä Tehtävä 2

E = 10;         % V RMS     (lähdejännite tehollisarvolla)
U = E;          % V RMS     (jännite tehollisarvolla)
f = 50;         % Hz        (taajuus)
R = 20;         % Ohm       (vastus)
L = 0.008;      % H         (induktiivisuus)
C = 0;          % F         (kapasitanssi)

% yleiset kaavat kompleksimuodossa

if C == 0
    X_C = 0
else
    X_C = 1/(2*pi*f*C*j);                           % yleinen kaava kondensaattorin impedanssille
end

X_L = 2*pi*f*L*j;                                   % yleinen kaava kelan impedanssille

% impendanssi

Z = R + X_C + X_L;                                  % kokonaisimpedanssi kompleksilukuna

% impedanssin itseisarvo

impedance = [abs(Z) rad2deg(angle(Z))]              % kokonaisimpedanssi polaariarvoina vektori tallennettuna

% kaavat virralle, ensin kompleksi, alempana itseisarvo

I = U/Z

I_polar = [abs(I) rad2deg(angle(I))]                % virta polaariarvoina vektoriksi tallennettuna

% tehokerroin

phi = angle(Z)                                      % vaihekulma
tehokerroin = cos(phi)

% jännitteet vektoreina, vaihekulmat asteina

U_max = U * sqrt(2)

U_R = [abs(I*R) rad2deg(angle(I*R))]                % jännite vastuksen yli

U_C = [abs(I*X_C) rad2deg(angle(I*X_C))]            % jännite kondensaattorin yli

U_L = [abs(I*X_L) rad2deg(angle(I*X_L))]            % jännite kelan yli

% tehot

P = U * abs(I) * cos(phi)                           % pätöteho      [W]

Q = U * abs(I) * sin(phi)                           % loisteho      [var]

S = U * abs(I)                                      % näennäisteho  [VA]
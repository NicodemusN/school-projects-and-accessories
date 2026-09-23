
# Laskin kahden maapallon pisteen väliselle suorimmalle matkalle maan pintaa pitkin
# Ohjelmaan syötetään pisteiden koordinaatit asteiden desimaalien tarkkuudella

import math

# Käyttöohje
print("Arvot x-akselilla ovat pituusasteita ja arvot y-akselilla ovat leveysasteita.")
print("Läntiset pituuspiirit ja eteläiset leveyspiirit on annettava negatiivisina ja desimaalimuodossa (esim. 75.23 ja 12.45).")

input1 = input("Anna ensimmäisen pisteen koordinaatit y,x: ")
input2 = input("Anna toisen pisteen koordinaatit y,x: ")

# input ja vakiomuuttujat
k1 = input1.split(",")
k2 = input2.split(",")

r_earth = 6371
theta = 0

# koordinaattien erottelu desimaaliluvuiksi ja muuntaminen radiaaneiksi
for i in range(len(k1)):
    k1[i] = float(k1[i])
    k1[i] = math.radians(k1[i])
i = 0
for i in range(len(k2)):
    k2[i] = float(k2[i])
    k2[i] = math.radians(k2[i])

k1[1] = k1[1] + math.pi
k2[1] = k2[1] + math.pi

#dif_lat = k1[0] - k2[0]
dif_lon = k1[1] - k2[1]

d = r_earth * math.acos(math.cos(k1[0]) * math.cos(k2[0]) * math.cos(dif_lon) + math.sin(k1[0]) * math.sin(k2[0]))
print(f"Antamiesi koordinaattien välinen etäisyys on noin {d:.2f}km.")
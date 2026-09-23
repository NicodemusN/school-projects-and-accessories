import math

# sets to false when exiting
programState = True
inputCheck = True

# introduction
print("Hello! This calculator can convert complex numbers to polar form, and vice versa. All angles are in degrees.")

# everything except mathematical operations
def main():

    print("Type [c] and press enter, if your input is in complex form.")
    print("Type [p] and press enter, if your input is in polar form.")

    inputType = input()

    if inputType == "c":
        inputComplex_r = float(input("Real part: "))
        inputComplex_i = float(input("Imaginary part: "))

        complexToPolar(inputComplex_r, inputComplex_i)
    elif inputType == "p":
        inputPolar_l = float(input("Vector length: "))
        inputPolar_t = float(input("Vector angle: "))

        polarToComplex(inputPolar_l, inputPolar_t)
    else:
        print("Incorrect input. You can choose [c] or [p].")


# math operations
def complexToPolar(a, b):

    if a == 0:
        theta = 0
    elif b == 0:
        theta = 90
    else:
        div = b / a
        theta = math.tan(div)
    length = math.sqrt(a**2 + b**2)

    a = str(a)
    b = str(b)
    theta = str(math.degrees(theta))
    length = str(length)

    print("Complex number " + a + " + j" + b + " equals length " + length + " with angle " + theta + ".")

def polarToComplex(a, b):

    real = a * math.cos(math.radians(b))
    imaginary = a * math.sin(math.radians(b))

    a = str(a)
    b = str(b)
    if real < 1e-15:
        real = 0
        real = str(real)
    else:
        real = str(real)

    if imaginary < 1e-15:
        imaginary = 0
        imaginary = str(imaginary)
    else:
        imaginary = str(imaginary)

    print("Length " + a + " with angle " + b + " equals complex number " + real + " + j" + imaginary + ".")

def endQuery():

    print()
    print("Type [n] to perform new calculation, and [x] to exit.")
    continueState = input()

    if continueState == "n":
        return 1

    elif continueState == "x":
        return 0

    else:
        inputCheck = False

while programState == True:
    main()

    if endQuery() == 0:
        break

    while inputCheck == False:
        endQuery()
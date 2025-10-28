#dado 10 numeros enteros se solicita saber
#a) cuales son pares
#b) cuales el promedio de los impares
#c) cuantos numeros existen en los siguientes rangos (de 1  a  4) (de 5 a 7) (y de 8 a 12) y contar los que no pertenecen a los otros numeros

pares = []
SumaImp = 0
ContRango1_4 = 0
ContRango5_7 = 0
ContRango8_12 = 0
ContOtro = 0
ContImp = 0  # Para contar la cantidad de impares


for x in range(10):
    a = int(input("Digite un número entero: "))
    
 
    if a % 2 == 0:
        pares.append(a)
    else:
        SumaImp = SumaImp + a
        ContImp = ContImp + 1
    

    if 1 <= a <= 4:
        ContRango1_4 += 1
    elif 5 <= a <= 7:
        ContRango5_7 += 1
    elif 8 <= a <= 12:
        ContRango8_12 += 1
    else:
        ContOtro += 1

if ContImp > 0:
    PromImp = SumaImp / ContImp
else:
    PromImp = 0


print()
print("los números pares son:", pares)
print("El promedio de los impares es:", PromImp)
print("Cantidad de números en el rango 1 a 4:", ContRango1_4)
print("Cantidad de números en el rango 5 a 7:", ContRango5_7)
print("Cantidad de números en el rango 8 a 12:", ContRango8_12)
print("Cantidad de números fuera de los rangos:", ContOtro)



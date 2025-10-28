#taller de python
#programador: jair stiven martinez palacios
#Fecha : 16 de octubre de 2024

from datetime import date
hoy = date.today()
print("Hoy es el dia:", hoy)
AuxM=0; pares=0
SumaImp=0; ContCol=0; ContArg=0; ContChi=0; ContOtro=0
for x in range (5):
    a=int(input ("digite un numero entero: "))
    if a>AuxM:
        AuxM=a
    if a%2==0:
        pares=pares+1
    else:
        SumaImp=SumaImp+a
print()
print ("Mayor de los numeros digitados es :" ,AuxM)
print ("Cantidad de Pares", pares)
print ("La suma de los impares es: ", SumaImp)
for z in range(1, 8):
    pais =input ("Digite un pais de Suramerica:")
    if pais=="Colombia":
        ContCol=ContCol+1
    elif pais=="Argentina":
        ContArg=ContArg+1
    elif pais=="Chile":
        ContChi=ContChi+1
    else:
        ContOtro=ContOtro+1
print ()
print ("Cantidad de veces Colombia", ContCol)
print ("Cantidad de veces Argentina", ContArg)
print ("Cantidad de veces Chile", ContChi)
print ("Otro pais", ContOtro)
print ("se acabo")

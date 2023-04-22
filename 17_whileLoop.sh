# ! /bin/bash
# Programa para ejemplificar el uso de la sentencia de iteración while
# Author: Eduardo RM

numero=1

while [ $numero -ne 10 ]  #numero not equal a 10
do
    echo "Imprimiendo $numero veces"
    numero=$(( numero + 1 )) #numero sera igual a numero más 1
done

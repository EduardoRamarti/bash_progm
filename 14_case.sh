#!/bin/bash
#Programa para ejemplificar el uso de la sentencia case
#Author: Eduardo RM

option=""

echo "Ejemplo sentencia Case"
read -n1 -p "Ingrese una opcion de la A - Z:" option
echo -e "\n"

case $option in
    "A") echo -e "\nOperacion Guardar Archivo";;
    "B") echo "Operacion Eliminar Archivo";;
    [C-E]) echo "No esta implementada la operacion";;
    "*") "Opcion Incorrecta";;
esac #La palabra clave esac en Bash scripting es simplemente la palabra case escrita al revés. Se utiliza para finalizar un bloque case, que se utiliza para tomar decisiones basadas en varias opciones.

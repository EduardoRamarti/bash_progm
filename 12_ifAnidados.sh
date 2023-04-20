#!/bin/bash
#Programa para ejemplificar el uso de los if anidados
#Author: Eduardo RM

notaClase=0

echo "Ejemplo sentencia if/else"
read -n1 -p "Indique cual es su nota (1-9):" notaClase
echo -e "\n"
if [ $notaClase -ge 7 ]; then
    echo "El alumno aprueba la materia"
    read -p "Va continuar estudiando el siguiente nivel (s/n):" contiuna
    if [ $contiuna == "s" ]; then
        echo "Bienvenido al siguiente nivel"
    else
        echo "Gracias por tu participacion"
    fi
else
    echo "El alumno reprueba la materia"
fi
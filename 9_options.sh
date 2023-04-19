#!/bin/bash
#Programa para ejemplificar como se realiza el paso de opciones con o sin parametros
#Author: Eduardo RM

echo "Programa opciones"
echo "Opcion 1 enviada: $1"
echo "Opcion 2 enviada: $2"
echo "Opciones enviadas: $*"
echo -e "\n"
echo "Recuperar los valores"

while [ -n "$1" ] #mientra que $1 no este vacio
do
case "$1" in #en caso que $1 sea (cualquiera de las siguientes opciones)
-a) echo "-a opcion utilizada";;
-b) echo "-b opcion utilizada";;
-c) echo "-c opcion utilizada";;
*) echo "$1 no es una opcion";; #en caso de que se ingrese cualquier otra opcion 
esac #La sentencia "esac" es utilizada en Bash scripting como una forma de finalizar la estructura de un bloque de código "case"
shift #se utiliza para que el primer argumento o parámetro de entrada se elimine y todos los demás argumentos se desplazan una posición a la izquierda. es decir la siguiente iteracion sera la unica
done
#!/bin/bash
#Reto 3
#Author: Eduardo RM

echo "**********Opciones**********"
echo "1. Decir Hola"
echo "2. Enviar saludo personalizado"
echo "3. Descargar algun servicio"
echo "4. Repetidor"
echo "5. Nada"
read -n1 -p "Ingresa un valor (1-5):" value

if [ $value -eq 1 ]; then
    echo -e "\n"
    echo -e "\nHola guapo"
elif [ $value -eq 2 ]; then
    echo -e "\n"
    read -p "Ingresa tu nombre: " name
    echo -e "\nHola $name"
elif [ $value -eq 3 ]; then
    echo -e "\n"
    read -p "Ingresa la ruta del servicio a descargar: " service
    wget $service
elif [ $value -eq 4 ]; then
    echo -e "\n"
    read -p "Ingresa algo:" repeat
    read -p "Ingresa cuantas veces quieres repetirlo:" numb
    for (( i=1; i<=$numb; i++ ))
    do
        echo -e "\n$repeat"
    done
elif [ $value -eq 5 ]; then
    echo -e "\nLOL"
else
    echo -e "\nDeberas ingresar una opcion valida"
fi

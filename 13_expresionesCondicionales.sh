#!/bin/bash
#Programa para ejemplificar el uso de expresiones condicionales
#Author: Eduardo RM

edad=0
pais=""
pathArchivo=""

read -p "Ingrese su edad:" edad
read -p "Ingrese su pais:" pais
read -p "Ingrese el path de su archivo:" pathArchivo

echo -e "\nExpresiones Condicionales con numeros"

if [ $edad -lt 10 ]; then
    echo "La persona es un niño o niña"
elif [ $edad -ge 10 ] && [ $edad -le 17 ]; then 
    echo "La persona se trata de un adolescente"
else
    echo "La persona es mayor de edad"
fi


echo -e "\nExpresiones Condicionales con Cadenas"

if [ $pais == "EEUU" ]; then
    echo "La persona es Americana"
elif [ $pais == "MX" ] || [ $pais == "COL" ]; then 
    echo "La persona es de Latin Amercia"
else
    echo "Se descnoce la nacionalidad"
fi

echo -e "\nExpresiones Condicionales con Archivos"

if [ -d $pathArchivo]; then
    echo "El directorio $pathArchivo existe"
else
    echo "El directorio $pathArchivo no existe"
fi


#!/bin/bash
#Programa para ejemplificar como capturar la informacion del usuario y validarla utilizando ecpresiones regulares
#Autor: Eduardo RM

identificacionRegex='^(0-9){10}$'
paisRegex='^MX|COL|US$'
fechaNacimientoRegex='^19|20[0-8]{2} [1-12] [1-31]$'

echo "Expresiones regulares"
read -p "Ingresa una identificacion:" identificacion
read -p "Ingresa las iniciales de un pais [MX, COL, USA]:" pais
read -p "Ingresa la fecha de nacimiento [yyyyMMdd]:" fechaNacimiento

#Valida identificacion
if [[ $identificacion =~ $identificacionRegex ]]; then
    echo "identificacion $identificacion valida"
else 
    echo "identificacion $identificacion invalida"
fi

#valida pais
if [[ $pais =~ $paisRegex ]]; then
    echo "Pais $pais valido"
else 
    echo "Pais $pais invalido"
fi

#valia fecha nacimeinto 
if [[ $fechaNacimiento =~ $fechaNacimientoRegex ]]; then
    echo "Fecha Nacimiento $fechaNacimiento valida"
else 
    echo "Fecha Nacimiento $fechaNacimiento invalida"
fi
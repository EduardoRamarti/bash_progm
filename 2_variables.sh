#!/bin/bash
#Programa para revisar la declaracion de variables 

opcion=0
nombre=Eduardo

echo "Opcion: $opcion y Nombre: $nombre"

#Exportar la variable nombre para que este disponible a los demas procesos 
export nombre

#LLamar al siguiente script para recuperar la varaible 
./2_variables_2.sh
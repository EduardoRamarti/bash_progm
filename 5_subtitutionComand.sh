#!/bin/bash
#Programa para revisar como ejecutar comandos dentro de un programa y alamacenarlos en una varaible para su posteriro utilizacion 
#Author: Eduardo RM

ubicacionActual=`pwd` #Una forma de ejecutar un comando 
infoKernel=$(uname -a) #otra forma de ejecutar un comando 

echo -e "La ubicacion actual es la siguiente: $ubicacionActual\n"
echo "Informacion del Kernel: $infoKernel"



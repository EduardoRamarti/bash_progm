#!/bin/bash
#Programa para ejemplificar como capturar la informacion del usuario y validarla
#Author: Eduardo RM

option=0
backupName=""

echo "Programa de utilidades Postgres"
read -n1 -p "Ingresar una opcion:" option 
echo -e "\n"
read -n10 -p "Ingresar el nombre del archivo:" backupName 
echo -e "\n"
echo "Opcion: $option , Backup Name:$backupName"
read -s -p "Clave:" clave
echo "clave: $clave"
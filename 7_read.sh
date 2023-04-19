#!/bin/bash
#Programa para ejemplificar como capturar la informacion del usuario utilizando el comando read
#Author: Eduardo RM

option=0
backupName=""

echo "Programa de utilidades Postgres"
read -p "Ingresar una opcion:" option #aqui debemos de colocar al final la variable (para que ahi guarde el valor que reciba)

read -p "Ingresar el nombre del archivo:" backupName #aqui debemos de colocar al final la variable (para que ahi guarde el valor que reciba)

echo "Opcion: $option , Backup Name:$backupName"

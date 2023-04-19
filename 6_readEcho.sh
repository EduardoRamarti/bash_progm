#!/bin/bash
#Programa para ejemplificar como capturar la informacion del usuario utilizando el comando echo, read y $REPLY
#Author: Eduardo RM

option=0
backupName=""

echo "Programa de utilidades Postgres"
echo -n "Ingresar una opcion:"
read
option=$REPLY
echo -n "Ingresar el nombre del archivo:"
read
backupName=$REPLY
echo "Opcion: $option , Backup Name:$backupName"

#!/bin/bash
#Este es el quinto reto del curso
#Author: Eduardo RM

if [ -e log.txt ]; then #con la flag "-e" verifica si el archivo que pase existe
    date +%Y-%m-%d\ %H:%M:%S >> log.txt
else 
    touch log.txt
    date +%Y-%m-%d\ %H:%M:%S >> log.txt
fi

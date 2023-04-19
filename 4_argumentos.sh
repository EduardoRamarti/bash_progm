#!/bin/bash
#Programa para ejemplificar el paso de argumentos 
#Author: Eduardo RM

nombreCurso=$1 #first argument to courseName
horarioCurso=$2

echo -e "El nombre del curso: $nombreCurso \nDictado en el horario de $horarioCurso"
echo "El numero de parametros enviados es: $#"
echo "Los parametros enviados son: $*"

# $# //to count arguments
# $* to print all the arguments


#to execute use:
# bash lec_4_file.sh "name course" "18:00 to 20:00" "OTHER_I" "OTHER_II"
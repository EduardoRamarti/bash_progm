#!/bin/bash
#Programa para ejemplificar el uso de los arreglos
#Author: Eduardo RM

arregloNumeros=(1 2 3 4 5 6)
arregloCadenas=(Eduardo Pedro Susana)
arregloRango=({A..Z} {10..20})

#Imprimir todos los valores 
echo "Arreglo de numeros:${arragloNumeros[*]}"
echo "Arreglo de cadenas:${arragloCadenas[*]}"
echo "Arreglo de rangos:${arragloRangos[*]}"


#Imprimir los tamaños de los arreglos
echo "Tamaño arreglo de numeros:${#arragloNumeros[*]}"
echo "Tamaño arreglo de cadenas:${#arragloCadenas[*]}"
echo "Tamaño arreglo de rangos:${#arragloRangos[*]}"


#Imprimir la posicion 3 del arreglo
echo "Posicion 3 Arreglo de numeros:${arragloNumeros[3]}"
echo "Posicion 3 Arreglo de cadenas:${arragloCadenas[3]}"
echo "Posicion 3 Arreglo de rangos:${arragloRangos[3]}"


#Añadir y eliminar valores en un arreglo 
arregloNumeros[7]=20 #aqui estoy agregando un nuevo valor 
unset arregloNumeros[0] #aqui estoy eliminando un valor 
echo "Arreglo de numeros: ${arregloNumeros[*]}"
echo "Tamaño arreglo de numeros: ${#arregloNumeros[*]}"
# ! /bin/bash
# Programa para ejemplificar el uso de la sentencia de iteración for
# Author: Eduardo RM 

arregloNumeros=(1 2 3 4 5 6)

echo "Iterar en la Lista de Números"
for num in ${arregloNumeros[*]}
do
    echo "Número:$num"
done


echo "Iterar en la lista de Cadenas"
for nom in "Marco" "Pedro" "Luis" "Daniela"
do
    echo "Nombres:$nom"
done


echo "Iterar en Archivos"   # Imprime un mensaje indicando que se va a iterar en los archivos
for fil in *               # Itera a través de todos los archivos en el directorio actual
do
    echo "Nombre archivo:$fil"   # Muestra el nombre del archivo en cada iteración
done


echo "Iterar utilizando un comando"   # Imprime un mensaje indicando que se va a iterar utilizando un comando
for fil in $(ls)                      # Itera a través de todos los archivos obtenidos por el comando "ls"
do
    echo "Nombre archivo:$fil"        # Muestra el nombre del archivo en cada iteración
done


echo "Iterar utilizando el formato tradcional"
for ((i=1; i<10; i++))
do
    echo "Número;$i"
done

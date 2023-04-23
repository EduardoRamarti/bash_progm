# ! /bin/bash
# Programa para ejemplificar como se lee en un archivo
# Author: Eduardo RM

# Imprimir un mensaje indicando que se va a leer el archivo
echo "Leyendo archivo..."

# Leer el contenido del archivo y mostrarlo en la pantalla
cat $1

# Imprimir un mensaje indicando que se van a almacenar los valores en una variable
echo -e "\nAlmacenando los valores en una variable..."

# Leer el contenido del archivo y almacenarlo en una variable
valorCat=`cat $1` #con `` le estamos indicando que el resultado de la ejecucion del comando cat, lo guarde en la variable 

# Imprimir el contenido de la variable
echo "$valorCat"

# Imprimir un mensaje indicando que se va a leer el archivo línea por línea
echo -e "\nLeyendo archivo línea por línea utilizando while..."

# Leer el archivo línea por línea utilizando while
#se utiliza la variable "IFS" (Internal Field Separator) para evitar que los espacios en blanco al inicio o al final se recorten en las líneas que se leen del archivo.
#read leera la linea por linea del archivo, y cada una la guardara en la variable linea. 
#En el momento en que read ya no encuentre otra linea, regresara un false al While 
while IFS= read linea
do
    echo "$linea"
done < $1 #La última línea "< $1" indica que se debe leer el archivo que se especifica como argumento en la línea de comandos.
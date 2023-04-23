# ! /bin/bash
# Programa para ejemplificar como se escribe en un archivo
# Author: Eduardo RM

echo "Escribir en un archivo"
# Imprime en pantalla un mensaje para indicar que se inicia la escritura en un archivo.

echo "Valores escritos con el comando echo" >> $1
# Utiliza el comando "echo" para escribir la cadena de texto "Valores escritos con el comando echo" en el archivo especificado en el primer argumento del script. La redirección ">>" se utiliza para agregar el contenido al final del archivo sin sobrescribir lo que ya estaba escrito en él.

#Adición multilínea
#cat tambien se puede utilizar para escribir: 
#<< abre el bloque de texto que se va a escribir 
## indica que dentro del bloque de texto que se escribe, si encuentr estos 3 caracteres juntos, ahi termina el contenido a ingresar 
cat <<EOM >>$1 
$2
EOM



# Complemento 
# para complementar la información de esta clase;
# Para escribir en un archivo podemos utilizar >> y >
# >>, si no existe el archivo, se creará, si existe, se agregara al final del archivo.
# >, si no existe el archivo, se creara, si existe, será reemplazado
# Responder


# EOM: End Of Message
# EOF: End Of File
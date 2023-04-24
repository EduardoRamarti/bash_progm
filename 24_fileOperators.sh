# ! /bin/bash
# Programa para ejemplificar las operaciones de un archivo
# Author: Eduardo RM

echo "Operaciones de un archivo"
mkdir -m 764 backupScripts #creamos el directorio con los permisos 764

echo -e "\nCopiar los scripts del directorio actual al nuevo directorio backupScripts"
cp *.* backupScripts/   #realiza una copia de todos los archivos que tengan cualquier extensión en el directorio actual y los copia al nuevo directorio "backupScripts"
ls -la backupScripts/ #lista el contenido del directorio backupScripts

echo -e "\nMover el directorio backupScripts a otra ubicación: $HOME"
mv backupScripts $HOME #mueve el directorio a otra ubicacion


echo -e "\nEliminar los archivos .txt"
rm *.txt #elimina todos los archivos del directorio actual con terminacion .txt

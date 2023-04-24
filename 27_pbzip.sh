# ! /bin/bash
# Programa para ejemplificar el empaquetamiento con el comando pbzip
# Author: Eduardo RM

echo "Empaquetar todos los scripts de la carpeta shellCourse"
tar -cvf shellCourse.tar *.sh
pbzip2 -f shellCourse.tar #pbzip2 comprime el archivo y El parámetro -f se utiliza para forzar la compresión incluso si ya existe un archivo comprimido con el mismo nombre. 

echo "Empaquetar y comprimir un directorio con tar y pbzip2"
#El parámetro -c se utiliza para crear un nuevo archivo, y -f se utiliza para especificar el nombre del archivo que se está creando. 
#La redirección > shellCourseDos.tar.bz2 se utiliza para redirigir la salida del comando tar (el archivo comprimido recién creado) al archivo shellCourseDos.tar.bz2. 

tar -cf *.sh -c > shellCourseDos.tar.bz2

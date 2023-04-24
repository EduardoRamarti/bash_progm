# ! /bin/bash
# Programa para ejemplificar el empaquetamiento con el comando tar
# Author: Eduardo RM
echo "Empaquetar todos los scripts de la carpeta shellCourse"

# -c: esta opción indica a tar que cree un archivo nuevo (en este caso, shellCourse.tar).
# -v: esta opción indica a tar que muestre información detallada sobre el progreso del proceso de creación del archivo
# -f: esta opción indica a tar que el siguiente argumento (shellCourse.tar, en este caso) es el nombre del archivo que se está creando. 

tar -cvf shellCourse.tar *.sh #*.sh empaquetar todos los archivos con extension .sh

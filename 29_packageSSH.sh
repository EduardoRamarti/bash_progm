# ! /bin/bash
# Programa para ejemplificar la forma de como transferir por la red utilizando el comando rsync, utilizando las opciones de empaquetamiento para optmizar la velocidad de transferencia
# Author: Eduardo RM

echo "Empaquetar todos los scripts de la carpeta shellCourse y transferirlos por la red a otro equipo utilizando el comando rsync"

host=""
usuario=""

read -p "Ingresar el host:" host
read -p "Ingresar el usuario:" usuario
echo -e "\nEn este momento se procederá a empaquetar la carpeta y transferirla según los datos ingresados"
rsync -avz $(pwd) $usuario@$host:/Users/martosfre/Downloads/platzi 

#rsync: es el comando utilizado para sincronizar y copiar archivos de un lugar a otro.
# -a: se utiliza para indicar que se debe realizar una copia de archivos de manera recursiva (es decir, copiar todo el contenido del directorio) y mantener los permisos, tiempos de modificación y propietarios de los archivos originales.
# -v: se utiliza para mostrar una salida detallada del proceso de copia en la terminal.
# -z: se utiliza para comprimir los datos durante la transferencia para ahorrar ancho de banda de red.
# $(pwd): se utiliza para obtener la ruta completa del directorio actual (es decir, el directorio desde donde se está ejecutando el comando).
# $usuario: es una variable que debe contener el nombre de usuario del servidor remoto al que se está copiando el contenido del directorio actual.
# $host: es una variable que debe contener la dirección IP o el nombre de host del servidor remoto al que se está copiando el contenido del directorio actual.
# :/Users/martosfre/Downloads/platzi: indica la ruta de destino en el servidor remoto donde se copiarán los archivos del directorio actual.
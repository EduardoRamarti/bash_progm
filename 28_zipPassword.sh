# ! /bin/bash
# Programa para ejemplificar el empaquetamiento con clave utilizando zip
# Author: Eduardo RM

echo "Empaquetar todos los scripts de la carpeta shellCourse con zip y asignarle una clave de seguridad"
zip -e shellCourse.zip *.sh
#La opción -e se utiliza para habilitar la encriptación en el archivo zip. Al especificar la opción -e, se le pedirá al usuario que ingrese una contraseña para cifrar el archivo zip. 
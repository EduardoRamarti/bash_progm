# ! /bin/bash
# Programa para ejemplificar el empaquetamiento con el comando tar y gzip
# Author: Eduardo RM

echo "Empaquetar todos los scripts de la carpeta shellCourse"
tar -cvf shellCourse.tar *.sh

# Cuando se comprime con gzip el empaquetamiento anterior se elimina
gzip shellCourse.tar

echo "comprimir un solo archivo, con la mejor compresion posible"
gzip -9 9_options.sh #el 9 indica que se haga con la mejor compresion, es lo mismo que el flag --best

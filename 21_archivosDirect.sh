# ! /bin/bash
# Programa para ejemplificar la creación de archivos y directorios
# Author: Eduardo RM

echo "Archivos - Directorios"
# Imprime en pantalla un mensaje para indicar que se inicia el programa.

if [ $1 = "d" ]; then # Verifica si el primer argumento es igual a la letra "d".
    mkdir -m 764 $2 #aqui la flag -m establece que tendra los permisos siguientes
    # Si se cumple la condición anterior, se crea un directorio con el nombre pasado como segundo argumento.
    echo "Directorio creado correctamente"
    # Muestra un mensaje en pantalla para indicar que el directorio se ha creado exitosamente.
    ls -la $2
    # Lista los archivos y directorios dentro del directorio creado.

elif [ $1 == "f" ]; then
    # Si el primer argumento es igual a la letra "f".
    touch $2
    # Crea un archivo con el nombre pasado como segundo argumento.
    echo "Archivo creado correctamente"
    # Muestra un mensaje en pantalla para indicar que el archivo se ha creado exitosamente.
    ls -la $2
    # Lista los archivos y directorios dentro del directorio creado.

else
    # Si no se cumple ninguna de las condiciones anteriores.
    echo "No existe esa opción: $1"
    # Muestra un mensaje en pantalla para indicar que no existe esa opción.
fi
# Finaliza la estructura condicional.
# ! /bin/bash
# Programa para ejemplificar el uso de break y continue
# Author: Eduardo RM

echo "Sentencias break y continue"

for fil in $(ls)
# Inicia un bucle for que itera a través de todos los archivos en el directorio actual
do
    for nombre in {1..4}
    # Inicia otro bucle for que itera desde 1 hasta 4
    do
        if [ $fil == "10_download.sh" ]; then
            break;
            # Si el nombre del archivo es "10_download.sh", se rompe el bucle interno y se pasa al siguiente archivo
        elif [[ $fil == 4* ]]; then
            continue;
            # Si el nombre del archivo comienza con "4", se salta la iteración actual del bucle interno y se pasa a la siguiente iteración
        else
            echo "Nombre archivo:$fil _ $nombre"
            # Si no se cumplen las condiciones anteriores, se muestra el nombre del archivo y el valor actual de la variable "nombre"
        fi
    done
done
# Se cierra el segundo bucle for
# Se cierra el primer bucle for
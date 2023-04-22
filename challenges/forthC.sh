# ! /bin/bash
#  Cuarto Reto
#Author: Eduardo RM

# Establecer la variable "opcion" en 0
opcion=0

# Entrar en el bucle "while"
while : #se colocaron dos puntos (:) para indicar que se va a iniciar un bucle infinito.
do
    # Limpiar la pantalla
    clear

    # Desplegar el menú de opciones en la pantalla
    echo "_________________________________________"
    echo "PROGRAMA CON UTILIDADES (OPCIONES DISPONI)"
    echo "_________________________________________"
    echo "                MENÚ PRINCIPAL           "
    echo "_________________________________________"
    echo "1. Procesos Actuales"
    echo "2. Memoria Disponible"
    echo "3. Espacio en Disco"
    echo "4. Información de Red"
    echo "5. Variables de Entorno Configuradas"
    echo "6. Información Programa"
    echo "7. Backup información"
    echo "8. Ingrese una opción."
    echo "9. Salir"

    # Leer la opción ingresada por el usuario
    read -p "Ingrese una opción [1-9]:" opcion

    # Validar la opción ingresada utilizando la estructura "case"
    case $opcion in
        1)
            echo -e "\nLos procesos actuales son:\n"
            ps
            sleep 3
            ;; #la terminacion de la linea del case
        2)
            echo -e "\nLa memoria disponible es:\n"
            free
            sleep 3
            ;;
        3)
            echo -e "\nEl espacio en disco disponible es:\n"
            fdisk
            sleep 3
            ;;
        4)
            echo -e "\nLa informacion de red es la siguiente:\n"
            ifconfig
            sleep 3
            ;;
        5)  
            echo -e "\nLas variables son las siguientes:\n"
            cat /etc/enviroment.d/
            sleep 3
            ;;
        6)
            echo -e "Presentando la informacion del programa..."
            sleep 3
            ;;
        7)
            echo -e "\nPresentando el Backup"
            sleep 3
            ;;
        8)
            read -p "Ingresa la opcion que deseas:" option
            echo -e "\nLa opcion seleccionada es: $option"
            sleep 3
            ;;
        9)
            echo "Salir del Programa"
            exit 0
            ;;
    esac
done
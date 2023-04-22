# ! /bin/bash
# Programa que permite manejar las utilidades de Postres
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
    echo "PGUTIL - Programa de Utilidad de Postgres"
    echo "_________________________________________"
    echo "                MENÚ PRINCIPAL           "
    echo "_________________________________________"
    echo "1. Instalar Postgres"
    echo "2. Desinstalar Postgres"
    echo "3. Sacar un respaldo"
    echo "4. Restar respaldo"
    echo "5. Salir"

    # Leer la opción ingresada por el usuario
    read -n1 -p "Ingrese una opción [1-5]:" opcion

    # Validar la opción ingresada utilizando la estructura "case"
    case $opcion in
        1)
            # Si la opción es 1, mostrar el mensaje "Instalar postgres" y esperar 3 segundos
            echo -e "\nInstalar postgres....."
            sleep 3
            ;; #la terminacion de la linea del case
        2) 
            # Si la opción es 2, mostrar el mensaje "Desinstalar postgres" y esperar 3 segundos
            echo -e "\nDesinstalar postgres...."
            sleep 3
            ;;
        3) 
            # Si la opción es 3, mostrar el mensaje "Sacar respaldo" y esperar 3 segundos
            echo -e "\nSacar respaldo..."
            sleep 3
            ;;
        4) 
            # Si la opción es 4, mostrar el mensaje "Restaurar respaldo" y esperar 3 segundos
            echo -e "\nRestaurar respaldo..."
            sleep 3
            ;;
        5)  
            # Si la opción es 5, mostrar el mensaje "Salir del programa" y salir del script con el código de salida 0
            echo "Salir del Programa"
            exit 0
            ;;
    esac
done
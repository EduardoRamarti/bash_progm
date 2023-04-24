# ! /bin/bash
# Programa que permite manejar las utilidades de Postres
# Author: Eduardo RM

opcion=0

# Función para instalar postgres
instalar_postgres () {
    echo -e "\n Verificar instalación postgres ...."
    verifyInstall=$(which psql) #ejecutamos el comando which para saber para mostrar la ubicación de un ejecutable en el sistema de archivos. guardandolo en la variable verifyInstall
    if [ $? -eq 0 ]; then
    #El símbolo "$?" se refiere al código de retorno del comando o proceso anterior. Un valor de 0 significa que el comando o proceso se ejecutó sin errores, mientras que cualquier otro valor indica un error.
        echo -e "\n Postgres ya se encuentra instalado en el equipo"
    else
        read -s -p "Ingresar contraseña de sudo:" password #-s silent (ocultar el parametro)
        read -s -p "Ingresar contraseña a utilizar en postgres:" passwordPostgres
        echo "$password" | sudo -S apt update #la flag "-S" indica que la contraseña del usuario que ejecuta el comando será leída desde la entrada estándar (stdin) el cual viene por medio del pipe desde el comando anterior 
        echo "$password" | sudo -S apt-get -y install postgresql postgresql-contrib
        sudo -u postgres psql -c "ALTER USER postgres WITH PASSWORD '{$PASSWORDpOSTGRES}';"
        #"-u postgres" indica que el comando debe ser ejecutado como el usuario "postgres".
        # "psql" es el programa de línea de comandos de PostgreSQL utilizado para interactuar con la base de datos.
        # "-c" indica que el siguiente argumento es un comando SQL que se debe ejecutar en la base de datos.
        # "ALTER USER postgres WITH PASSWORD '{$PASSWORDpOSTGRES}';" es el comando SQL que cambia la contraseña del usuario "postgres" a la contraseña especificada en la variable de entorno $PASSWORDpOSTGRES.
        
        echo "$password" | sudo -S systemctl enable postgresql.service
        echo "$password" | sudo -S systemctl start postgresql.service
    fi    
    read -n 1 -s -r -p "PRESIONE [ENTER] para continuar..."
    #el flag "-r" se utiliza para evitar que el comando "read" interprete la barra invertida (backslash) como un carácter de escape.
}

# Función para desinstalar postgres
desinstalar_postgres () {
    read -s -p "Ingresar contraseña de sudo:" password
    echo -e "\n"
    echo "$password" | sudo -S systemctl stop postgresql.service
    echo "$password" | sudo -S apt-get -y --purge remove postgresql\*
    echo "$password" | sudo -S rm -r /etc/postgresql #aqui -r sirve para eliminar directorios de forma recursiva.
    echo "$password" | sudo -S rm -r /etc/postgresql-common
    echo "$password" | sudo -S rm -r /var/lib/postgresql
    echo "$password" | sudo -S userdel -r postgres
    echo "$password" | sudo -S groupdel postgresql
    read -n 1 -s -r -p "PRESIONE [ENTER] para continuar..."
}

# Función para sacar un respaldo
sacar_respaldo () {
    echo "Sacar respaldo..."i
    echo "Directorio backup: $1"
}

# Función para restaurar un respaldo
restaurar_respaldo () {
    echo "Restaurar respaldo..."
    echo "Directorio respaldo: $1"
}


while :
do
    #Limpiar la pantalla
    clear
    #Desplegar el menú de opciones
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

    #Leer los datos del usuario - capturar información
    read -n1 -p "Ingrese una opción [1-5]:" opcion

    #Validar la opción ingresada
    case $opcion in
        1)
            instalar_postgres
            sleep 3
            ;;
        2) 
            desinstalar_postgres
            sleep 3
            ;;
        3) 
            read -p "Directorio Backup:" directorioBackup
            sacar_respaldo $directorioBackup
            sleep 3
            ;;
        4) 
            read -p "Directorio de Respaldos:" directorioRespaldos
            restaurar_respaldo $directorioRespaldos
            sleep 3
            ;;
        5)  
            echo "Salir del Programa"
            exit 0
            ;;
    esac
done    
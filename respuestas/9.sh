#!/bin/bash
op=3

while [ $op -ne 4 ];
do
clear

## Menu ##
echo "1) Eliminar archivo"
echo "2) Mostrar /etc"
echo "3) Mostrar contenido passwd"
echo "4) Salir"
read op

case $op in

	1)
	clear
	echo "Ingresa el nombre del archivo"
	read nombre
	clear
	if [ -f "$nombre" ]; then
		rm "$nombre"
		echo "Se elimino el archivo"
		read ejemplo
	else
		echo "El archivo no existe"
		read ejemplo
	fi
;;

	2)
	ls -l /etc
	read ejemplo
;;
	3)
	cat /etc/passwd || more
;;

esac

done

clear



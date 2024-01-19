#!/bin/bash
# Agenda
# Autor: Santiago González Mangut
# Fecha: 19-01-2024

while true ; do
echo "a)Añadir una entrada"
echo "b)Buscar por dni"
echo "c)Ver la agenda completa"
echo "d)Eliminar todas las entradas de la agenda"
echo "e)Finalizar"
read -p "introduce una opcion: " opcion
case $opcion in
	a)
	echo "Añadir una entrada "
	read -p "Introduce un dni: " dni
	if  grep "^$dni" agenda.txt 2>/dev/null; then
		echo "El DNI ya existe"
	else

		read -p "Introduce el nombre: " nombre
		read -p "Introduzca el apellido: " apellido
		read -p "Introduzca la localidad: " localidad
		echo "$dni:$nombre:$apellido:$localidad: " >> agenda.txt
	
	fi
	;;
	b)
	echo "Buscar por dni"
	read -p "introduzca el dni: " dni
	if grep "^$dni" agenda.txt >/dev/null; then
		nombre=$(grep "^$dni" agenda.txt | cut -d ":" -f 2)
		apellido=$(grep "^$dni" agenda.txt | cut -d ":" -f 3)
		localidad=$(grep "^$dni" agenda.txt | cut -d ":" -f 4)
		echo "La persona con el DNI numero $dni es: $nombre $apellido , y vive en $localidad"
	else
		echo "El dni no existe"
	fi
	;;
	c)
	echo "Ver la agenda completa"
	cat agenda.txt
	;;
	d)
	echo  "Eliminar todas las entradas de la agenda"
	echo > agenda.txt ;;
	e) 
echo "finalizar"
	exit
;;
esac 
done

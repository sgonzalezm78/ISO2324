#!/bin/bash
#Calculadora
#Autor: Santiago González Mangut
#Fecha: 23-01-2024
echo "Santiago González Mangut"

if [ $# -ne 2 ]; then
	echo "Numero de parametros incorrecto"
	exit
fi

if [ -f $1 ]; then
	echo "El fichero ya existe"
	exit
fi
i=1
while [ $i -le $2 ]; do 
read -p "Operación:op 0p1 Op2 " op op1 op2
case $op in

	S)
	let suma=$op1+$op2
	echo $op $op1 $op2  >> $1 ;;
	R)
	let resta=$op1+$op2
	echo $op $op1 $op2 >> $1 ;;
	M)
	let multiplicacion=$op1*$op2
	echo $op $op1 $op2 >> $1 ;;
	D)
	let division=$op1/$op2
	echo $op $op1 $op2 >> $1 ;;
	X) exit ;;
	*) exit ;;
esac
i=$((i+1))
#Ante de terminar se mostrara por pantalla la ruta completa del fichero de salida y a continuacion su contenico ls $1 
done
fichero=$(pwd)
echo "contenido del fichero"
echo "$fichero/$1"
cat $1

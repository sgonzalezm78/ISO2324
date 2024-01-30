#!/bin/bash
#fiveOrmore
# Autor: Santiago
# Fecha: 29-01-2024

if [ $# -ne 2 ]; then
	echo "numero de parametro incorrecto"
	exit
fi

if [ -f $1 ]; then
	echo  "El fichero ya existe" 
	exit
fi

if [ -d $1  ]; then
	echo "El directorio existe"
fi

#!/bin/bash
#Autor: Santiago González Mangut
#Fecha : 30-01-2024
#FiveOrMore

clear
ficheros=$(ls $2/.*txt)
for i in $ficheros; do
	if [ -f $i ]; then
		lineas=$(cat $i | wc -l)
		if [ $lineas -ge 5 ]; then
			#parte 3
			echo $i 
			echo $i >> $1
			#parte 4
			palabras=$(cat $i | wc -w)
			echo "El fichero tiene $palabras palabras" > $i.q
			cat $i > $i.q
		fi
	fi
done
numero=$(cat $1|wc -l $1)

echo $numero


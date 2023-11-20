@echo off
REM Deberás pedir al usuario el nombre de un archivo y comprobar si existe. Si
REM existe el fichero, mostrarás un aviso de que ya existe y volverá a preguntarte
REM por el archivo, si no existe, lo creará.
REM
REM Autor: Santiago González Mangut
REM Fecha: 17-11-2023
:inicio 

set /p nombre_archivo= "Introduce el nombre de un archivo y comprobara si existe: "

if exist %nombre_archivo% (
	echo el archivo existe 
	goto inicio
) else (
	echo > %nombre_archivo%
) 

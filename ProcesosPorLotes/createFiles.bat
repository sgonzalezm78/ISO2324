@echo off 
REM Crear un menú con dos opciones: Si el usuario pulsa 1, se creará un archivo
REM .txt y si pulsa 2 que se cree un archivo .bat.
REM 
REM Autor: Santiago González mangut
REM Fecha: 15-11-2023


echo Si pulsas 1 se creara un archivo. txt
echo Si pulsas 2 se creara un archivo .bat
set/p numero= "Pulsa un numero 1,2: "

if %numero% EQU 1 goto ficherotxt 
if %numero% EQU 2 goto ficherobat

:ficherobat
set/p ficherobat= "Diga el nombre de el fichero .bat a crear: "
set/p ruta= "Introduce una ruta: "
type nul > %ruta%/%ficherobat%.bat
exit
:ficherotxt
set/p ruta= "Introduce una ruta: "
set/p archivotxt= "Diga el nombre de fichero.txt a crear: "

 type nul > %ruta%/%archivotxt%.txt 
exit
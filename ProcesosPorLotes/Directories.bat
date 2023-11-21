@echo off
REM Directorios
REM 
REM Santiago González Mangut
REM Fecha: 15-11-2023
echo Menu
echo 1- Crear fichero con nombre pedido al usuario
echo 2- Mostrar el árbol de directorios de la carpeta de usuario
echo 3- Mostrar archivos con extensión txt
echo 4- Crea los directorios alfredoff, marinapg y ramonam en tu directorio actual
echo 5- Copia el contenido de tu carpeta de usuario a C:\copias
set /p opciones="Selecciona una opcion 1-5: "

if %opciones% EQU 1 goto opcion1
if %opciones% EQU 2 goto arbolDirectorio
if %opciones% EQU 3 goto archivosTXT
if %opciones% EQU 4 goto creadirectorios
if %opciones% EQU 5 goto copiaelcontenido
:opcion1
set /p nombrefichero= "Introduce el nombre del fichero a Crear: "
type nul > %nombrefichero%
exit
:arbolDirectorio
@echo on
tree %USERPROFILE%
exit
:archivosTXT
dir *.txt
pause
exit
:creadirectorios
mkdir alfredoff marinapg ramonam 
exit
:copiaelcontenido
xcopy %USERPROFILE% C:\Copias /E
pause






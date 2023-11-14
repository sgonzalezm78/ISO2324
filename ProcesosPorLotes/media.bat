@echo off
REM Crea una variable que se encargue de crear dentro del perfil del usuario actual los siguientes directorios:asir dam smr daw ceti
REM 
REM Autor: Santiago González Mangut
REM Fecha: 14-11-2023
set /a media=(%1 + %2 + %3) / 3
echo La media de %1, %2 y %3 es: %media%

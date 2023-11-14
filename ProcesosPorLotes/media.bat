@echo off
REM Crea una variable que se encargue de crear dentro del perfil del usuario actual los siguientes directorios:asir dam smr daw ceti
REM 
REM Autor: Santiago González Mangut
REM Fecha: 14-11-2023
set /a numero1=%1
set /a numero2=%2
set /a numero3=%3
set /a media=(%numero1% + %numero2% + %numero3%) / 3
echo La media de %numero1%, %numero2% y %numero3% es: %media%
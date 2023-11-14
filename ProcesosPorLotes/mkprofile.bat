@echo off
REM Crea una variable que se encargue de crear dentro del perfil del usuario actual los siguientes directorios:asir dam smr daw ceti
REM 
REM Autor: Santiago González Mangut
REM Fecha: 13-11-2023

mkdir %USERPROFILE%\asir %USERPROFILE%\dam %USERPROFILE%\smr %USERPROFILE%\daw %USERPROFILE%\ceti
mkdir %USERPROFILE%\asir\docs %USERPROFILE%\dam\docs %USERPROFILE%\smr\docs %USERPROFILE%\daw\docs %USERPROFILE%\ceti\docs
mkdir %USERPROFILE%\asir\pract %USERPROFILE%\dam\pract %USERPROFILE%\smr\pract %USERPROFILE%\daw\pract %USERPROFILE%\ceti\pract
mkdir %USERPROFILE%\asir\exam %USERPROFILE%\dam\exam %USERPROFILE%\smr\exam %USERPROFILE%\daw\exam %USERPROFILE%\ceti\exam

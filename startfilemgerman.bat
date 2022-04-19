@echo off
cd C:\
:code
dir
echo 1: anderen ordner auswaehlen
echo.
echo 2: ordner erstellen
echo.
echo 3: datei oeffnen
echo.
echo 4: datei erstellen
echo.
echo 5: datei loeschen
echo.
echo 6: ordner loeschen
echo.
echo 7: verlassen
set /P auswahl="auswahl  "
if "%auswahl%"=="1" goto cd1
if "%auswahl%"=="2" goto mkdir1
if "%auswahl%"=="3" goto openfile
if "%auswahl%"=="4" goto cfile
if "%auswahl%"=="5" goto dfile
if "%auswahl%"=="6" goto dfo
if "%auswahl%"=="7" goto exweg
echo das programm hat die nummer nicht erkannt
echo beliebige taste zum fortsetzen
pause > NUL
goto code
:cd1
set /P cddir="bitte in ""!  DIR: "
cd %cddir%

goto code
:mkdir1
set /P mdirv=" bitte in "" DIR: "
mkdir %mdirv%
echo beliebige taste zum fortsetzen
pause > NUL
goto code
:openfile
set /P openv=" bitte in ""! File:"
start %openv%
echo beliebige taste zum fortsetzen
pause > NUL
goto code
:cfile
set /P fn="bitte in "" NAME: "
echo. >> %fn%
echo neue zeile in %fn% erstellt beliebige taste zum fortsetzen
pause > NUL
goto code
:dfile
set /P df="bitte in "" NAME: "
set /P yndf="Wirklich loeschen? Ja oder Nein DIES IST PERMAMENT!"
if "%yndf%"=="Ja" goto dfy
echo beliebige taste zum fortsetzen
pause > NUL
goto code
:dfy
del %df%
echo beliebige taste zum fortsetzen
pause > NUL
goto code
:exweg
echo tschau!
timeout 1 >NUL
exit
:dfo
set /P dfo="bitte in "" NAME: "
set /P yndfo="Wirklich loeschen? Ja oder Nein DIES IST PERMAMENT!"
if "%yndfo%"=="Ja" goto dfoy
echo beliebige taste zum fortsetzen
pause > NUL
goto code
:dfoy
rd %dfo%
echo beliebige taste zum fortsetzen
pause > NUL
goto code
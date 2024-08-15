@echo off
title WimOS NPD



:wbios
taskkill /f /im explorer.exe
cls
echo Witaj w WimOS v.NPD
echo nacisnij dowolny przycisk aby kontynuowac
pause>nul
goto start


:start
cls
echo Opcje: 
echo start save mode - save_mode
echo gry systemowe - gry
echo zmien haslo - zmien_haslo
echo wyloguj sie - wyloguj
echo zrestartuj komputer - zrestartuj_wimos
echo wylacz komputer - wylacz_komputer
echo ustawienia wimos, bios - ustawienia_wmsn
echo aplikacje - aplikacje
set /p startsethc=: 
if %startsethc%==save_mode goto sethcsavemode
if %startsethc%==gry goto dirgry
if %startsethc%==zmien_haslo goto sethczh
if %startsethc%==wyloguj goto sethclogoff
if %startsethc%==zrestartuj_wimos goto sethczwimos
if %startsethc%==wylacz_komputer goto shutdowncmp
if %startsethc%==ustawienia_wmsn goto bioswmsn
if %startsethc%==aplikacje goto apksys32
if not %startsethc%==save_mode goto start
if not %startsethc%==gry goto start
if not %startsethc%==zmien_haslo goto start
if not %startsethc%==wyloguj goto start
if not %startsethc%==zrestartuj_wimos goto start
if not %startsethc%==wylacz_komputer goto start
if not %startsethc%==ustawienia_wmsn goto start
if not %startsethc%==aplikacje goto start

:sethcsavemode
cls
echo wlacz cmd.exe - cmd
echo wylacz komputer - wylacz_savemode
echo zrestartuj komputer - restart
echo glowne menu - gmenu
set /p wybierzsavemode=: 
if %wybierzsavemode%==cmd goto savemodecmd
if %wybierzsavemode%==wylacz_savemode goto shutdowncmp
if %wybierzsavemode%==restart goto sethczwimos
if not %wybierzsavemode%==cmd goto sethcsavemode
if not %wybierzsavemode%==wylacz_savemode goto sethcsavemode
if not %wybierzsavemode%==restart goto sethcsavemode



:savemodecmd
start cmd.exe
cls
goto start


:dirgry
cls
echo ruletka - pruletka
set /p wgry=: 
if %wgry% goto pruletkagry
if not %wgry% goto dirgry


:pruletkagry
cls
set /p pruletkagryd=Wpisz dobra liczbe od 1 do 4: 
cls
set /p pruletkagry=Wpisz liczbe od 1 do 4:
if %pruletkagry%==%pruletkagryd% goto dirgry
if not %pruletkagry%==%pruletkagryd% goto pruletkagrydobrze


:pruletkagrydobrze
cls
echo dobra liczba liczba: %pruletkagryd%
pause>nul
cls
goto dirgry

:sethczh
cls
set /p zmienhaslospass=Stare haslo: 
cls
set /p zmienhaslonpass=Nowe haslo: 
net user %USERNAME% %zmienhaslonpass%
cls
goto start

:sethclogoff
logoff
cls
goto start


:sethczwimos
cls
shutdown -r -t 00
exit

:shutdowncmp
cls
shutdown -s -t 00
exit

:bioswmsn
cls
echo odpal jako:
echo msdos - oj1
echo win10 - oj2
echo wyjdz z bioswmsn - wyjdz
set /p wbiosopt=bios: 
if %wbiosopt%==oj1 goto start
if %wbiosopt%==oj2 goto win10oj2
if %wbiosopt%==wyjdz goto start
if not %wbiosopt%==oj1 goto bioswmsn
if not %wbiosopt%==oj2 goto bioswmsn
if not %wbiosopt%==wyjdz goto bioswmsn

:win10oj2
cls
start explorer.exe
exit

:apksys32
cls
echo przegladarka - edge
set /p wapksys32=: 
if %wapksys32%==edge goto apksysedge
if not %wapksys32%==edge goto apksys32

:apksysedge
cls
start msedge.exe
cls
goto start




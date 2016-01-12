@echo off
:: Minimizar todo
::call :Min >"%temp%.\tmp.vbs"
::cscript /nologo "%temp%.\tmp.vbs"
::timeout /t 3 >nul

::call :TileV >"%temp%.\tmp.vbs"
call :TileH >"%temp%.\tmp.vbs"
cscript /nologo "%temp%.\tmp.vbs"
del "%temp%.\tmp.vbs"
goto :eof


::::::::::::::::::: Funciones :::::::::::::::::::::::::::::
:::Min
::echo CreateObject("shell.application").MinimizeAll
::goto :eof

:TileV
echo CreateObject("shell.application").TileVertically
goto :eof

:TileH
echo CreateObject("shell.application").TileHorizontally
goto :eof
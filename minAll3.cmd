@echo off
if not DEFINED IS_MINIMIZED set IS_MINIMIZED=1 && start "" /min "%~dpnx0" %* && exit
call :Min >"%temp%.\tmp.vbs"
::call :TileV >"%temp%.\tmp.vbs"
::call :TileH >"%temp%.\tmp.vbs"
cscript /nologo "%temp%.\tmp.vbs"
del "%temp%.\tmp.vbs"
goto :eof



exit




::::::::::::::::::: Funciones :::::::::::::::::::::::::::::
:Min
echo CreateObject("shell.application").MinimizeAll
goto :eof

:TileV
echo CreateObject("shell.application").TileVertically
goto :eof

:TileH
echo CreateObject("shell.application").TileHorizontally
goto :eof
@echo off
call :Min >"%temp%.\tmp.vbs"
cscript /nologo "%temp%.\tmp.vbs"
start www.google.com
start notepad.exe
start taskmgr
start resmon
ping -n 8 127.0.0.1
call :Tile >"%temp%.\tmp.vbs"
cscript /nologo "%temp%.\tmp.vbs"
del "%temp%.\tmp.vbs"
goto :eof

:::Min
::echo CreateObject("shell.application").MinimizeAll
::goto :eof

:Tile
echo CreateObject("shell.application").TileVertically
goto :eof
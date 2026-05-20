@echo off
setlocal
SET "DIR_ATUAL=%~dp0"
if "%DIR_ATUAL:~-1%"=="\" SET "DIR_ATUAL=%DIR_ATUAL:~0,-1%"

powershell -NoProfile -Command "$d=[Environment]::GetFolderPath('Desktop'); $w=New-Object -ComObject WScript.Shell; $s=$w.CreateShortcut(\"$d\Palworld Expedicao Bot.lnk\"); $s.TargetPath='%DIR_ATUAL%\PalworldBot.exe'; $s.WorkingDirectory='%DIR_ATUAL%'; $s.Description='Palworld Expedicao Bot'; $s.Save()"

start "" "%DIR_ATUAL%\PalworldBot.exe"
endlocal
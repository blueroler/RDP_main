@echo off
del /f "C:\Users\Public\Desktop\Epic Games Launcher.lnk" > out.txt 2>&1
net config server /srvcomment:"Windows Server 2019 By Oshekher" > out.txt 2>&1
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /V EnableAutoTray /T REG_DWORD /D 0 /F > out.txt 2>&1
net user admin QWE@123 /add >nul
net localgroup administrators admin /add >nul
net user admin /active:yes >nul
net user installer /delete
diskperf -Y >nul
sc config Audiosrv start= auto >nul
sc start audiosrv >nul
ICACLS C:\Windows\Temp /grant admin:F >nul
ICACLS C:\Windows\installer /grant admin:F >nul
echo Successfully Installed!, If the RDP is Dead, Please Rebuild Again!
echo IP:
@echo on
tasklist | find /i "ngrok.exe" >Nul && curl -s localhost:4040/api/tunnels | jq -r .tunnels[0].public_url
set hosting=local
tasklist | find /i "ngrok.exe" && curl -s localhost:4040/api/tunnels | jq -r .tunnels[0].public_url
echo %hosting%
start https://script.google.com/macros/s/AKfycbwOqJwESaIOZdJ3yKOkK7W8x9XUkN_PhxTi4YHnz8CHAyyc484/exec?mess=lol
echo Username: admin
echo Password: QWE@123
echo Please Login to your RDP!!
ping -n 10 127.0.0.1 >nul

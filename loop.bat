@echo off
echo Blueroler DEV
goto check
tasklist | find /i "ngrok.exe" >Nul && goto check || echo "Unable to get NGROK tunnel, be sure NGROK_AUTH_TOKEN right in Settings> Secrets> Repository secret. Maybe your previous VM is still running: https://dashboard.ngrok.com/status/tunnels" & ping 8.8.8.8 >Nul & exit
:check
ping 8.8.8.8 -t
cls
goto check

@echo off
echo Blueroler DEV
goto check
tasklist | find /i "ngrok.exe" >Nul && goto check || echo "Unable to get NGROK tunnel, be sure NGROK_AUTH_TOKEN right in Settings> Secrets> Repository secret. Maybe your previous VM is still running: https://dashboard.ngrok.com/status/tunnels" & ping google.com >Nul & exit
:check
ping google.com -t
cls
goto check

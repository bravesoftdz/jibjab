@ECHO OFF
REM Mr.Q.Young-20130425
REM Test-Reminder
REM 0 - Done; 1 - ++times
mode con cols=20 lines=5
color 0f
title Mr.Q.Young





set player="%ProgramFiles%\Windows Media Player\wmplayer.exe"
set swarning="%SystemRoot%\Media\Windows Exclamation.wav"
set sdone="%SystemRoot%\Media\tada.wav"

if "%1"=="" goto BYE
if %1 == 0 goto DONE
if %1 == 1 (goto WARNING) else (goto BYE)

:DONE
echo done!
start %player% %sdone%
goto END

:WARNING
echo warning!
start %player% %swarning%
goto END

:END
echo .....
ping 127.1 -n 5 >nul
taskkill /f /im wmplayer.exe>nul 2>nul

:BYE
echo Bye!
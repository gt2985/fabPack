@Set DEBUG=OFF
@Echo %DEBUG%
SETLOCAL

	If Exist "%~dp0\value.txt" Goto Process
		Call "%~dp0\reset.cmd"
		Goto End

:Process
	Set /p COUNTER=< "%~dp0\value.txt"

	REM COUNTER cycle between 100 and 999 (3 digits)
	If "%COUNTER%" EQU "100 " Set /a COUNTER=1000

	REM Decrease Value
	Set /a COUNTER=%COUNTER% - 1
	Echo %COUNTER% > "%~dp0\value.txt"
	Goto End

:End
ENDLOCAL
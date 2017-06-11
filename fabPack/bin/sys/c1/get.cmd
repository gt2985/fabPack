@Set DEBUG=OFF
@Echo %DEBUG%

	If Exist "%~dp0\value.txt" Goto Process
		Set COUNTER=100
		Echo %COUNTER% > "%~dp0\value.txt"
		Goto End

:Process
	Set /p COUNTER=< "%~dp0\value.txt"
	Goto End
	
:End

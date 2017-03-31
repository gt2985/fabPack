:Start
	Cls
	Echo.
	Echo ==========================================================
	Echo =             Select an organisation                     =
	Echo ==========================================================
	Echo %BREADCRUMB%
	Echo ==========================================================
	Echo.
	Echo - 1 ... %ORG1%
	Echo.
	Echo - 2 ... %ORG2%
	Echo.
	Echo - 3 ... %ORG3%
	Echo.
	Echo - 4 ... %ORG4%
	Echo.
	Echo - 5 ... %ORG5%
	Echo.
	Echo - 6 ... %ORG6%
	Echo.
	Echo - 7 ... %ORG7%
	Echo.
	Echo - 8 ... %ORG8%
	Echo.
	Echo - 9 ... %ORG9%
	Echo.
	Echo - B ... Back
	Echo - Q ... Quit
	Echo.
	Echo ==========================================================

	Set Selection=
	Echo Type your selection and PRESS ENTER
	Echo.
	Set /P Selection=
	If NOT '%Selection%'=='' SET Selection=%Selection:~0,1%
	If '%Selection%'==''  GOTO Start
	If '%Selection%'=='1' GOTO Menu1
	If '%Selection%'=='2' GOTO Menu2
	If '%Selection%'=='3' GOTO Menu3
	If '%Selection%'=='4' GOTO Menu4
	If '%Selection%'=='5' GOTO Menu5
	If '%Selection%'=='6' GOTO Menu6
	If '%Selection%'=='7' GOTO Menu7
	If '%Selection%'=='8' GOTO Menu8
	If '%Selection%'=='9' GOTO Menu9
	If /I '%Selection%'=='B' GOTO Back
	If /I '%Selection%'=='Q' GOTO Quit
	Goto End

:Menu0
	Set ORG=%ORG0%
	Set USR=%USR0%
	Set PWD=%PWD0%
	Set URL=%URL0%
	Goto End

:Menu1
	Set ORG=%ORG1%
	Set USR=%USR1%
	Set PWD=%PWD1%
	Set URL=%URL1%
	Goto End

:Menu2
	Set ORG=%ORG2%
	Set USR=%USR2%
	Set PWD=%PWD2%
	Set URL=%URL2%
	Goto End

:Menu3
	Set ORG=%ORG3%
	Set USR=%USR3%
	Set PWD=%PWD3%
	Set URL=%URL3%
	Goto End

:Menu4
	Set ORG=%ORG4%
	Set USR=%USR4%
	Set PWD=%PWD4%
	Set URL=%URL4%
	Goto End

:Menu5
	Set ORG=%ORG5%
	Set USR=%USR5%
	Set PWD=%PWD5%
	Set URL=%URL5%
	Goto End

:Menu6
	Set ORG=%ORG6%
	Set USR=%USR6%
	Set PWD=%PWD6%
	Set URL=%URL6%
	Goto End

:Menu7
	Set ORG=%ORG7%
	Set USR=%USR7%
	Set PWD=%PWD7%
	Set URL=%URL7%
	Goto End

:Menu8
	Set ORG=%ORG8%
	Set USR=%USR8%
	Set PWD=%PWD8%
	Set URL=%URL8%
	Goto End

:Menu9
	Set ORG=%ORG9%
	Set USR=%USR9%
	Set PWD=%PWD9%
	Set URL=%URL9%
	Goto End

:Back
	Set NEXT=BACK
	Goto End

:Quit
	Set NEXT=QUIT
	Goto End

:End

REM Set end of Menu if no more parameter is required
Set NEXT=ACTION
IF "%OPERATION%"=="RetrievePKG" Set NEXT=CONTINUE

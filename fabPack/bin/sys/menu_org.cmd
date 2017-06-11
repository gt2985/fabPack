:Start
	Cls
	Echo.
	Echo - fabPack - Packaging Utility for Salesforce Professionals -
	Echo ------------------------------------------------------------
	Echo %BREADCRUMB%
	Echo ------------------------------------------------------------
	Echo.
	Echo Please select an organisation
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
	Echo.
	Echo - Q ... Quit / B ... Back
	Echo.
	Echo ------------------------------------------------------------

	Set Selection=
	Echo Type your selection and PRESS ENTER
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

:Menu1
	Set ONB=1
	Set ORG=%ORG1%
	Set USR=%USR1%
	Set PWD=%PWD1%
	Set URL=%URL1%

	Set NEXT=CONTINUE
	REM Skip next Menu if no more parameter is required
	IF NOT "%OPERATION%"=="RetrievePKG" Set NEXT=ACTION
	Goto End

:Menu2
	Set ONB=2
	Set ORG=%ORG2%
	Set USR=%USR2%
	Set PWD=%PWD2%
	Set URL=%URL2%

	Set NEXT=CONTINUE
	REM Skip next Menu if no more parameter is required
	IF NOT "%OPERATION%"=="RetrievePKG" Set NEXT=ACTION
	Goto End

:Menu3
	Set ONB=3
	Set ORG=%ORG3%
	Set USR=%USR3%
	Set PWD=%PWD3%
	Set URL=%URL3%

	Set NEXT=CONTINUE
	REM Skip next Menu if no more parameter is required
	IF NOT "%OPERATION%"=="RetrievePKG" Set NEXT=ACTION
	Goto End

:Menu4
	Set ONB=4
	Set ORG=%ORG4%
	Set USR=%USR4%
	Set PWD=%PWD4%
	Set URL=%URL4%

	Set NEXT=CONTINUE
	REM Skip next Menu if no more parameter is required
	IF NOT "%OPERATION%"=="RetrievePKG" Set NEXT=ACTION
	Goto End

:Menu5
	Set ONB=5
	Set ORG=%ORG5%
	Set USR=%USR5%
	Set PWD=%PWD5%
	Set URL=%URL5%

	Set NEXT=CONTINUE
	REM Skip next Menu if no more parameter is required
	IF NOT "%OPERATION%"=="RetrievePKG" Set NEXT=ACTION
	Goto End

:Menu6
	Set ONB=6
	Set ORG=%ORG6%
	Set USR=%USR6%
	Set PWD=%PWD6%
	Set URL=%URL6%

	Set NEXT=CONTINUE
	REM Skip next Menu if no more parameter is required
	IF NOT "%OPERATION%"=="RetrievePKG" Set NEXT=ACTION
	Goto End

:Back
	Set NEXT=BACK
	Goto End

:Quit
	Set NEXT=QUIT
	Goto End

:End

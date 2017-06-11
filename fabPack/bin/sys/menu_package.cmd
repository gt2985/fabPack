:Start
	Cls
	Echo.
	Echo - fabPack - Packaging Utility for Salesforce Professionals -
	Echo ------------------------------------------------------------
	Echo %BREADCRUMB%
	Echo ------------------------------------------------------------
	Echo.
	Echo Please select a package
	Echo.
	Echo - 1 ... %PKG1%
	Echo.
	Echo - 2 ... %PKG2%
	Echo.
	Echo - 3 ... %PKG3%
	Echo.
	Echo - 4 ... %PKG4%
	Echo.
	Echo - 5 ... %PKG5%
	Echo.
	Echo - 6 ... %PKG6% 
	Echo.
	Echo.
	Echo - Q ... Quit / B ... Back
	Echo.
	Echo ------------------------------------------------------------

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

:Menu1
	Set PKG=%PKG1%
	Set NEXT=ACTION
	Goto End

:Menu2
	Set PKG=%PKG2%
	Set NEXT=ACTION
	Goto End

:Menu3
	Set PKG=%PKG3%
	Set NEXT=ACTION
	Goto End

:Menu4
	Set PKG=%PKG4%
	Set NEXT=ACTION
	Goto End

:Menu5
	Set PKG=%PKG5%
	Set NEXT=ACTION
	Goto End

:Menu6
	Set PKG=%PKG6%
	Set NEXT=ACTION
	Goto End

:Back
	Set NEXT=BACK
	Goto End

:Quit
	Set NEXT=QUIT
	Goto End

:End
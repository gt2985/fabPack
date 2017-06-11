:Start
	Cls
	Echo.
	Echo - fabPack - Packaging Utility for Salesforce Professionals -
	Echo ------------------------------------------------------------
	Echo %BREADCRUMB%
	Echo ------------------------------------------------------------
	Echo.
	Echo Please select an operation
	Echo.
	Echo - 1 ... Describe all supported metadata components
	Echo.
	Echo - 2 ... Retrieve a package described in Salesforce
	Echo.
	Echo - 3 ... Retrieve a package described in files\retrieve
	Echo.
	Echo - 4 ... Simulate a deployment to Salesforce
	Echo.
	Echo - 5 ... Deploy the local package to Salesforce
	Echo.
	Echo - 6 ... Delete components described in files\delete
	Echo.
	Echo.
	Echo - Q ... Quit
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
	If /I '%Selection%'=='Q' GOTO Quit
	Goto End

:Menu1
	Set OPERATION=Describe
	Set NEXT=CONTINUE
	Goto End

:Menu2
	Set OPERATION=RetrievePKG
	Set NEXT=CONTINUE
	Goto End

:Menu3
	Set OPERATION=RetrieveXML
	Set NEXT=CONTINUE
	Goto End

:Menu4
	Set OPERATION=CheckOnly
	Set NEXT=CONTINUE
	Goto End

:Menu5
	Set OPERATION=Deploy
	Set NEXT=CONTINUE
	Goto End

:Menu6
	Set OPERATION=Undeploy
	Set NEXT=CONTINUE
	Goto End

:Quit
	Set NEXT=QUIT
	Goto End

:End
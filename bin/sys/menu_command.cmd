:Start
	Cls
	Echo.
	Echo ==========================================================
	Echo =             Select a command                           =
	Echo ==========================================================
	Echo %BREADCRUMB%
	Echo ==========================================================
	Echo - 1 ......... List the metadata components
	Echo - 2 ......... Retrieve a package described in Salesforce
	Echo - 3 ......... Retrieve a package described locally
	Echo - 4 ......... Simulate a deployment to Salesforce
	Echo - 5 ......... Deploy the local package to Salesforce
	Echo - 6 ......... Undeploy components described locally
	Echo.
	Echo - Q ......... Quit
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
	If /I '%Selection%'=='Q' GOTO Quit
	Goto End

:Menu1
	Set ACTION=Metadata
	Set NEXT=CONTINUE
	Goto End

:Menu2
	Set ACTION=RetrievePKG
	Set NEXT=CONTINUE
	Goto End

:Menu3
	Set ACTION=RetrieveXML
	Set NEXT=CONTINUE
	Goto End

:Menu4
	Set ACTION=CheckOnly
	Set NEXT=CONTINUE
	Goto End

:Menu5
	Set ACTION=Deploy
	Set NEXT=CONTINUE
	Goto End

:Menu6
	Set ACTION=Undeploy
	Set NEXT=CONTINUE
	Goto End

:Quit
	Set NEXT=QUIT
	Goto End

:End
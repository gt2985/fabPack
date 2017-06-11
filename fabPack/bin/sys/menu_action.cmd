:Start
	Cls
	Echo.
	Echo - fabPack - Packaging Utility for Salesforce Professionals -
	Echo ------------------------------------------------------------
	Echo %BREADCRUMB%
	Echo ------------------------------------------------------------
	Echo.
	Echo Command in Progress

	Goto %OPERATION%

REM ===============================================================
:Describe
	REM Run the task
	CALL %ANT_HOME%\bin\ant.bat -buildfile "%ANT%" cleanup -Ddir="%LOG%"
	CALL %ANT_HOME%\bin\ant.bat -buildfile "%ANT%" describe -Ddir="%DSC%" -logfile "%LOG%\describe.log" -Dsf.usr=%USR% -Dsf.pwd=%PWD% -Dsf.url=%URL%

	REM Take a versioned snapshot and store in folder "archives" 
	CALL "%SYS%\c1\get.cmd"
	CALL %ANT_HOME%\bin\ant.bat -buildfile "%ANT%" archive -Dsrc="%DSC%" -Ddst="%ARC%\%COUNTER%-describe"
	CALL %ANT_HOME%\bin\ant.bat -buildfile "%ANT%" archive -Dsrc="%LOG%" -Ddst="%ARC%\%COUNTER%-describe\log"
	CALL "%SYS%\c1\inc.cmd"

	REM Execution result
	Echo ------------------------------------------------------------
	Type "%LOG%\describe.log"
	Echo.
	PAUSE
	GOTO End
REM ===============================================================

REM ===============================================================
:RetrievePKG
	REM Run the task
	CALL %ANT_HOME%\bin\ant.bat -buildfile "%ANT%" cleanup -Ddir="%LOG%"
	CALL %ANT_HOME%\bin\ant.bat -buildfile "%ANT%" retrievePKG -Ddir="%SRC%" -Dsf.pkg=%PKG% -logfile "%LOG%\retrievePKG.log" -Dsf.usr=%USR% -Dsf.pwd=%PWD% -Dsf.url=%URL%

	REM Take a versioned snapshot and store in folder "archives" 
	CALL "%SYS%\c1\get.cmd"
	CALL %ANT_HOME%\bin\ant.bat -buildfile "%ANT%" archive -Dsrc="%SRC%" -Ddst="%ARC%\%COUNTER%-retrievePKG-%PKG%"
	CALL %ANT_HOME%\bin\ant.bat -buildfile "%ANT%" archive -Dsrc="%LOG%" -Ddst="%ARC%\%COUNTER%-retrievePKG-%PKG%\log"
	CALL "%SYS%\c1\inc.cmd"

	REM Execution result
	Echo ------------------------------------------------------------
	Type "%LOG%\retrievePKG.log"
	Echo.
	PAUSE
	GOTO End
REM ===============================================================

REM ===============================================================
:RetrieveXML
	REM Run the task
	CALL %ANT_HOME%\bin\ant.bat -buildfile "%ANT%" cleanup -Ddir="%LOG%"
	CALL %ANT_HOME%\bin\ant.bat -buildfile "%ANT%" retrieveXML -Ddir="%SRC%" -Dxml="%RTV%\package.xml" -logfile "%LOG%\retrieveXML.log" -Dsf.usr=%USR% -Dsf.pwd=%PWD% -Dsf.url=%URL%

	REM Take a versioned snapshot and store in folder "archives" 
	CALL "%SYS%\c1\get.cmd"
	CALL %ANT_HOME%\bin\ant.bat -buildfile "%ANT%" archive -Dsrc="%SRC%" -Ddst="%ARC%\%COUNTER%-retrieveXML"
	CALL %ANT_HOME%\bin\ant.bat -buildfile "%ANT%" archive -Dsrc="%LOG%" -Ddst="%ARC%\%COUNTER%-retrieveXML\log"
	CALL "%SYS%\c1\inc.cmd"

	REM Execution result
	Echo ------------------------------------------------------------
	Type "%LOG%\retrieveXML.log"
	Echo.
	PAUSE
	GOTO End
REM ===============================================================

REM ===============================================================
:CheckOnly
	REM Run the task
	CALL %ANT_HOME%\bin\ant.bat -buildfile "%ANT%" cleanup -Ddir="%LOG%"
	CALL %ANT_HOME%\bin\ant.bat -buildfile "%ANT%" checkOnly -Ddir="%SRC%" -logfile "%LOG%\checkOnly.log" -Dsf.usr=%USR% -Dsf.pwd=%PWD% -Dsf.url=%URL%

	REM Take a versioned snapshot and store in folder "archives" 
	CALL "%SYS%\c1\get.cmd"
	CALL %ANT_HOME%\bin\ant.bat -buildfile "%ANT%" archive -Dsrc="%LOG%" -Ddst="%ARC%\%COUNTER%-checkOnly\log"
	CALL "%SYS%\c1\inc.cmd"

	REM Execution result
	Echo ------------------------------------------------------------
	Type "%LOG%\checkOnly.log"
	Echo.
	PAUSE
	GOTO End
REM ===============================================================

REM ===============================================================
:Deploy
	REM Run the task
	CALL %ANT_HOME%\bin\ant.bat -buildfile "%ANT%" cleanup -Ddir="%LOG%"
	CALL %ANT_HOME%\bin\ant.bat -buildfile "%ANT%" deploy -Ddir="%SRC%" -logfile "%LOG%\deploy.log" -Dsf.usr=%USR% -Dsf.pwd=%PWD% -Dsf.url=%URL%

	REM Take a versioned snapshot and store in folder "archives"
	CALL "%SYS%\c1\get.cmd"
	CALL %ANT_HOME%\bin\ant.bat -buildfile "%ANT%" archive -Dsrc="%LOG%" -Ddst="%ARC%\%COUNTER%-deploy\log"
	CALL "%SYS%\c1\inc.cmd"

	REM Execution result
	Echo ------------------------------------------------------------
	Type "%LOG%\deploy.log"
	Echo.
	PAUSE
	GOTO End
REM ===============================================================

REM ===============================================================
:Delete
	REM Run the task
	CALL %ANT_HOME%\bin\ant.bat -buildfile "%ANT%" cleanup -Ddir="%LOG%"
	CALL %ANT_HOME%\bin\ant.bat -buildfile "%ANT%" delete -Ddir="%DEL%" -logfile "%LOG%\delete.log" -Dsf.usr=%USR% -Dsf.pwd=%PWD% -Dsf.url=%URL%

	REM Take a versioned snapshot and store in folder "archives" 
	CALL "%SYS%\c1\get.cmd"
	CALL %ANT_HOME%\bin\ant.bat -buildfile "%ANT%" archive -Dsrc="%LOG%" -Ddst="%ARC%\%COUNTER%-delete\log"
	CALL "%SYS%\c1\inc.cmd"

	REM Execution result
	Echo ------------------------------------------------------------
	Type "%LOG%\delete.log"
	Echo.
	PAUSE
	GOTO End
REM ===============================================================

:End

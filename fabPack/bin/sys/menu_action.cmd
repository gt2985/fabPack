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
	CALL %ANT_HOME%\bin\ant.bat -buildfile "%ANT%" cleanup -Ddir="%LOG%" -q
	CALL %ANT_HOME%\bin\ant.bat -buildfile "%ANT%" describe -Ddir="%DSC%" -l "%LOG%\describe.log" -Dsf.usr=%USR% -Dsf.pwd=%PWD% -Dsf.url=%URL%

	REM Take a versioned snapshot and store in folder "archives"
	CALL "%SYS%\c1\get.cmd"
	CALL %ANT_HOME%\bin\ant.bat -buildfile "%ANT%" archive -Dsrc="%DSC%" -Ddst="%ARC%\%COUNTER%-describe\describe" -q
	CALL %ANT_HOME%\bin\ant.bat -buildfile "%ANT%" archive -Dsrc="%LOG%" -Ddst="%ARC%\%COUNTER%-describe\log" -q
	CALL "%SYS%\c1\inc.cmd"

	REM Execution result
	Echo ------------------------------------------------------------
	Notepad "%LOG%\describe.log"
	Echo.
	PAUSE
	GOTO End
REM ===============================================================

REM ===============================================================
:RetrievePKG
	REM Run the task
	CALL %ANT_HOME%\bin\ant.bat -buildfile "%ANT%" cleanup -Ddir="%LOG%" -q
	CALL %ANT_HOME%\bin\ant.bat -buildfile "%ANT%" retrievePKG -Ddir="%SRC%" -Dsf.pkg=%PKG% -l "%LOG%\retrievePKG.log" -Dsf.usr=%USR% -Dsf.pwd=%PWD% -Dsf.url=%URL%

	REM Take a versioned snapshot and store in folder "archives"
	CALL "%SYS%\c1\get.cmd"
	CALL %ANT_HOME%\bin\ant.bat -buildfile "%ANT%" archive -Dsrc="%SRC%" -Ddst="%ARC%\%COUNTER%-retrievePKG-%PKG%\src" -q
	CALL %ANT_HOME%\bin\ant.bat -buildfile "%ANT%" archive -Dsrc="%LOG%" -Ddst="%ARC%\%COUNTER%-retrievePKG-%PKG%\log" -q
	CALL "%SYS%\c1\inc.cmd"

	REM Execution result
	Echo ------------------------------------------------------------
	Notepad "%LOG%\retrievePKG.log"
	Echo.
	PAUSE
	GOTO End
REM ===============================================================

REM ===============================================================
:RetrieveXML
	REM Run the task
	CALL %ANT_HOME%\bin\ant.bat -buildfile "%ANT%" cleanup -Ddir="%LOG%" -q
	CALL %ANT_HOME%\bin\ant.bat -buildfile "%ANT%" retrieveXML -Ddir="%SRC%" -Dxml="%RTV%\package.xml" -l "%LOG%\retrieveXML.log" -Dsf.usr=%USR% -Dsf.pwd=%PWD% -Dsf.url=%URL%

	REM Take a versioned snapshot and store in folder "archives"
	CALL "%SYS%\c1\get.cmd"
	CALL %ANT_HOME%\bin\ant.bat -buildfile "%ANT%" archive -Dsrc="%SRC%" -Ddst="%ARC%\%COUNTER%-retrieveXML\src" -q
	CALL %ANT_HOME%\bin\ant.bat -buildfile "%ANT%" archive -Dsrc="%LOG%" -Ddst="%ARC%\%COUNTER%-retrieveXML\log" -q
	CALL "%SYS%\c1\inc.cmd"

	REM Execution result
	Echo ------------------------------------------------------------
	Notepad "%LOG%\retrieveXML.log"
	Echo.
	PAUSE
	GOTO End
REM ===============================================================

REM ===============================================================
:CheckOnly
	REM Run the task
	CALL %ANT_HOME%\bin\ant.bat -buildfile "%ANT%" cleanup -Ddir="%LOG%" -q
	CALL %ANT_HOME%\bin\ant.bat -buildfile "%ANT%" checkOnly -Ddir="%SRC%" -l "%LOG%\checkOnly.log" -Dsf.usr=%USR% -Dsf.pwd=%PWD% -Dsf.url=%URL%

	REM Take a versioned snapshot and store in folder "archives"
	CALL "%SYS%\c1\get.cmd"
	CALL %ANT_HOME%\bin\ant.bat -buildfile "%ANT%" archive -Dsrc="%LOG%" -Ddst="%ARC%\%COUNTER%-checkOnly\log" -q
	CALL "%SYS%\c1\inc.cmd"

	REM Execution result
	Echo ------------------------------------------------------------
	Notepad "%LOG%\checkOnly.log"
	Echo.
	PAUSE
	GOTO End
REM ===============================================================

REM ===============================================================
:Deploy
	REM Run the task
	CALL %ANT_HOME%\bin\ant.bat -buildfile "%ANT%" cleanup -Ddir="%LOG%" -q
	CALL %ANT_HOME%\bin\ant.bat -buildfile "%ANT%" deploy -Ddir="%SRC%" -l "%LOG%\deploy.log" -Dsf.usr=%USR% -Dsf.pwd=%PWD% -Dsf.url=%URL%

	REM Take a versioned snapshot and store in folder "archives"
	CALL "%SYS%\c1\get.cmd"
	CALL %ANT_HOME%\bin\ant.bat -buildfile "%ANT%" archive -Dsrc="%LOG%" -Ddst="%ARC%\%COUNTER%-deploy\log" -q
	CALL "%SYS%\c1\inc.cmd"

	REM Execution result
	Echo ------------------------------------------------------------
	Notepad "%LOG%\deploy.log"
	Echo.
	PAUSE
	GOTO End
REM ===============================================================

REM ===============================================================
:Delete
	REM Run the task
	CALL %ANT_HOME%\bin\ant.bat -buildfile "%ANT%" cleanup -Ddir="%LOG%" -q
	CALL %ANT_HOME%\bin\ant.bat -buildfile "%ANT%" delete -Ddir="%DEL%" -l "%LOG%\delete.log" -Dsf.usr=%USR% -Dsf.pwd=%PWD% -Dsf.url=%URL%

	REM Take a versioned snapshot and store in folder "archives"
	CALL "%SYS%\c1\get.cmd"
	CALL %ANT_HOME%\bin\ant.bat -buildfile "%ANT%" archive -Dsrc="%LOG%" -Ddst="%ARC%\%COUNTER%-delete\log" -q
	CALL "%SYS%\c1\inc.cmd"

	REM Execution result
	Echo ------------------------------------------------------------
	Notepad "%LOG%\delete.log"
	Echo.
	PAUSE
	GOTO End
REM ===============================================================

:End

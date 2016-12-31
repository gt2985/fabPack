:Start
	Cls
	Echo.
	Echo ==========================================================
	Echo =             Command in progress...                     =
	Echo ==========================================================
	Echo %BREADCRUMB%
	Echo ==========================================================
	Echo.
	Goto %ACTION%

REM ===============================================================
:Metadata
	CALL %ANT_HOME%\bin\ant.bat -buildfile "%ANT%" -Dsf.dir="%FPK%"
	Echo.
	PAUSE
	GOTO End
REM ===============================================================

REM ===============================================================
:RetrievePKG
	REM Cd %FMT%

	IF EXIST "%LOG%\retrieve-PKG.log" Del "%LOG%\retrieve-PKG.log"
	CALL %ANT_HOME%\bin\ant.bat -buildfile "%ANT%" -Dsf.dir="%FPK%" -Dsf.usr=%USR% -Dsf.pwd=%PWD% -Dsf.url=%URL% -Dsf.pkg=%PKG% -logfile "%LOG%\retrieve-PKG.log" retrievePKG
	Type "%LOG%\retrieve-PKG.log"
	Xcopy "%FPK%\src\*.*" "%FPK%\archives\src-%PKG%\" /v /s /q /y
	Echo.
	PAUSE
	GOTO End
REM ===============================================================

REM ===============================================================
:RetrieveXML
	REM Cd %FMT%

	IF EXIST "%LOG%\retrieve-XML.log" Del "%LOG%\retrieve-XML.log"
	CALL %ANT_HOME%\bin\ant.bat -buildfile "%ANT%" -Dsf.dir="%FPK%" -Dsf.usr=%USR% -Dsf.pwd=%PWD% -Dsf.url=%URL% -logfile %LOG%\retrieve-XML.log retrieveXML
	Type %LOG%\retrieve-XML.log
	Echo.
	PAUSE
	GOTO End
REM ===============================================================

REM ===============================================================
:CheckOnly
	REM Cd %FMT%

	IF EXIST "%LOG%\check-%NUM%.log" Del "%LOG%\check-%NUM%.log"
	CALL %ANT_HOME%\bin\ant.bat -buildfile "%ANT%" -Dsf.dir="%FPK%" -Dsf.usr=%USR% -Dsf.pwd=%PWD% -Dsf.url=%URL% -logfile %LOG%\check-%NUM%.log checkOnly
	Type %LOG%\check-%NUM%.log
	Echo.
	PAUSE
	GOTO End
REM ===============================================================

REM ===============================================================
:Deploy
	REM Cd %FMT%

	IF EXIST "%LOG%\deploy-%NUM%.log" Del "%LOG%\deploy-%NUM%.log"
	CALL %ANT_HOME%\bin\ant.bat -buildfile "%ANT%" -Dsf.dir="%FPK%" -Dsf.usr=%USR% -Dsf.pwd=%PWD% -Dsf.url=%URL% -logfile %LOG%\deploy-%NUM%.log deploy
	Type %LOG%\deploy-%NUM%.log
	Echo.
	PAUSE
	GOTO End
REM ===============================================================

REM ===============================================================
:Undeploy
	CALL %ANT_HOME%\bin\ant.bat -buildfile "%ANT%" undeploy
	Echo.
	PAUSE
	GOTO End
REM ===============================================================

:End

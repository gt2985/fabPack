:Start
	Cls
	Echo.
	Echo ==========================================================
	Echo =             Command in progress...                     =
	Echo ==========================================================
	Echo %BREADCRUMB%
	Echo ==========================================================
	Echo.
	Goto %OPERATION%

REM ===============================================================
:Metadata
	CALL %ANT_HOME%\bin\ant.bat -buildfile "%ANT%" -Dsf.dir="%FPK%"
	Echo.
	PAUSE
	GOTO End
REM ===============================================================

REM ===============================================================
:RetrievePKG
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
	IF EXIST "%LOG%\retrieve-XML.log" Del "%LOG%\retrieve-XML.log"
	CALL %ANT_HOME%\bin\ant.bat -buildfile "%ANT%" -Dsf.dir="%FPK%" -Dsf.usr=%USR% -Dsf.pwd=%PWD% -Dsf.url=%URL% -logfile "%LOG%\retrieve-XML.log" retrieveXML
	Type "%LOG%\retrieve-XML.log"
	Echo.
	PAUSE
	GOTO End
REM ===============================================================

REM ===============================================================
:CheckOnly
	IF EXIST "%LOG%\check.log" Del "%LOG%\check.log"
	CALL %ANT_HOME%\bin\ant.bat -buildfile "%ANT%" -Dsf.dir="%FPK%" -Dsf.usr=%USR% -Dsf.pwd=%PWD% -Dsf.url=%URL% -logfile "%LOG%\check.log" checkOnly
	Type "%LOG%\check.log"
	Echo.
	PAUSE
	GOTO End
REM ===============================================================

REM ===============================================================
:Deploy
	IF EXIST "%LOG%\deploy.log" Del "%LOG%\deploy.log"
	CALL %ANT_HOME%\bin\ant.bat -buildfile "%ANT%" -Dsf.dir="%FPK%" -Dsf.usr=%USR% -Dsf.pwd=%PWD% -Dsf.url=%URL% -logfile "%LOG%\deploy.log" deploy
	Type "%LOG%\deploy.log"
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

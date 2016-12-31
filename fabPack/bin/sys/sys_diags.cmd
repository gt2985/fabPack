:Start
	Cls

	Echo.
	Echo ==========================================================
	Echo =             Debug Information                          =
	Echo ==========================================================
	Echo } Home } Validation Installation
	Echo ==========================================================
	Echo }
	Echo ==========================================================
	Cd %ANTFolder%
	Call %ANT_HOME%\bin\ant.bat -version -logfile %LOGFolder%\debug-setup.log
	Call %ANT_HOME%\bin\ant.bat -p -buildfile %FMTFolder% -logfile %LOGFolder%\debug-build.log
	Echo.>>%LOGFolder%\debug-setup.log
	Type %LOGFolder%\debug-build.log >> %LOGFolder%\debug-setup.log
	Echo.>>%LOGFolder%\debug-setup.log
	Echo JAVA_HOME (should be initialised on the JDK and not the JRE):>>%LOGFolder%\debug-setup.log
	Echo %JAVA_HOME%>>%LOGFolder%\debug-setup.log
	Echo.>>%LOGFolder%\debug-setup.log
	Echo ANT_HOME (Should be set):>>%LOGFolder%\debug-setup.log
	Echo %ANT_HOME%>>%LOGFolder%\debug-setup.log
	Echo.>>%LOGFolder%\debug-setup.log
	Echo PATHEXT (.BAT should come before .CMD):>>%LOGFolder%\debug-setup.log
	Echo %PATHEXT%>>%LOGFolder%\debug-setup.log
	Echo.>>%LOGFolder%\debug-setup.log
	Echo PATH (should include JAVA JDK /bin and ANT /bin):>>%LOGFolder%\debug-setup.log
	Echo %PATH%>>%LOGFolder%\debug-setup.log
	Echo.>>%LOGFolder%\debug-setup.log
	Type %LOGFolder%\debug-setup.log
	Echo.
	Echo ==========================================================

IF /I NOT "%1"=="ALL" Goto Press-Enter 
	Echo.
	Echo ==========================================================
	Echo Colour Blue:  %BLUE%>%LOGFolder%\debug-batch.log
	Echo Colour Red:   %RED%>>%LOGFolder%\debug-batch.log
	Echo Colour Amber: %AMBER%>>%LOGFolder%\debug-batch.log
	Echo Colour Green: %GREEN%>>%LOGFolder%\debug-batch.log
	Echo.>>%LOGFolder%\debug-batch.log
	Echo Cmd folder: %CMDFolder%>>%LOGFolder%\debug-batch.log
	Echo Ant folder: %ANTFolder%>>%LOGFolder%\debug-batch.log
	Echo VCS folder: %VCSFolder%>>%LOGFolder%\debug-batch.log
	Echo Log folder: %LOGFolder%>>%LOGFolder%\debug-batch.log
	Echo.>>%LOGFolder%\debug-batch.log
	Echo NUM:  "%NUM%">>%LOGFolder%\debug-batch.log
	Echo ORG:  %ORG%>>%LOGFolder%\debug-batch.log
	Echo USR:  %USR%>>%LOGFolder%\debug-batch.log
	Echo PWD:  %PWD%>>%LOGFolder%\debug-batch.log
	Echo URL:  %URL%>>%LOGFolder%\debug-batch.log
	Echo PKG:  %PKG%>>%LOGFolder%\debug-batch.log
	Echo.>>%LOGFolder%\debug-batch.log
	Type %LOGFolder%\debug-batch.log
	Pause

:Press-Enter
	Echo.
	Echo PRESS ENTER to go back
	Pause > NUL

:End
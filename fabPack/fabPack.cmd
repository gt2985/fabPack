

@Set DEBUG=OFF
@Echo %DEBUG%


REM ===============================================================
	REM	fabPack: Packaging Utility

	REM fabPack lets you download packages from one Salesforce org 
	REM and upload it into another one. It also helps you capture
	REM metadata and build-up a library.
	REM It's an ANT wrapper.
	REM It saves you time and reduces risk of manual mistakes.

	REM © Fabrice Cathala - 14 May 2016
	Set Version=1.1
	Set ReleaseDate=16-11-09
REM ===============================================================

REM ===============================================================
	REM Initialisation

	REM Set UI theme color
	COLOR 0A
	REM Folders structure
	REM Only change if you have an amazing reason to do so
	REM fabPack install directory
	Set FPK=%CD%
	REM Source directory
	Set SRC=%FPK%\src	
	REM Project settings directory
	Set PRJ=%FPK%\bin
	REM System directory
	Set SYS=%FPK%\bin\sys
	REM Logs directory
	Set LOG=%FPK%\bin\logs
	REM Force.com Migration Tool directory
	Set ANT=%FPK%\bin\ant
REM ===============================================================

:Command
	Set BREADCRUMB=}
	CALL "%SYS%\menu_operation.cmd"
	IF "%NEXT%"=="ACTION" GOTO Action
	IF "%NEXT%"=="QUIT" GOTO End

:Org
	Set BREADCRUMB=} %OPERATION%
	REM Init values for the current project
	CALL "%PRJ%\orgs.cmd"
	REM Select an org
	CALL "%SYS%\menu_org.cmd"
	IF "%NEXT%"=="ACTION" GOTO Action
	IF "%NEXT%"=="BACK" GOTO Command
	IF "%NEXT%"=="QUIT" GOTO End

:Package
	Set BREADCRUMB=} %OPERATION% } %ORG%
	REM Init values for the current project
	CALL "%PRJ%\packages.cmd"
	REM Select a package
	CALL "%SYS%\menu_package.cmd"
	IF "%NEXT%"=="BACK" GOTO Org
	IF "%NEXT%"=="QUIT" GOTO End
	Set BREADCRUMB=} %OPERATION% } %ORG% } %PKG%

REM ===============================================================

:Action
	REM Time for action...
	CALL "%SYS%\menu_action.cmd"
	GOTO Command

:End

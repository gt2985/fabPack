
@Set DEBUG=OFF
@Echo %DEBUG%

REM ===============================================================
	REM	fabPack: Packaging Utility

	REM fabPack lets you download packages from one Salesforce org
	REM and upload it into another one. It also helps you capture
	REM metadata and build-up a library.
	REM It's a Salesforce Migration Toolkit wrapper, so you need
	REM both the Java and Ant stacks installed before using it.
	REM fabPack saves time and reduces risk of manual mistakes.

	REM © Fabrice Cathala - 14 May 2016
	Set Version=1.0
	Set ReleaseDate=30-July-17
REM ===============================================================

REM ===============================================================
	REM Initialisation

	REM Set UI theme color
	COLOR 0A
	REM Folders structure
	REM Only change if you have an amazing reason to do so
	REM fabPack install directory
	Set FPK=%CD%
	REM Project settings directory
	Set STG=%FPK%\settings
	REM Components to be deleted directory
	Set ARC=%FPK%\archives
	REM Components to be deleted directory
	Set DEL=%FPK%\files\delete
	REM Logs directory
	Set LOG=%FPK%\files\log
	REM Metadata list directory
	Set DSC=%FPK%\files\describe
	REM Retrieve components list directory
	Set RTV=%FPK%\files\retrieve
	REM Source directory
	Set SRC=%FPK%\files\src
	REM System directory
	Set SYS=%FPK%\bin\sys
	REM Force.com Migration Tool directory
	Set ANT=%FPK%\bin\ant
REM ===============================================================

:Command
	Set BREADCRUMB=} Home }
	CALL "%SYS%\menu_operation.cmd"
	IF "%NEXT%"=="ACTION" GOTO Action
	IF "%NEXT%"=="QUIT" GOTO End

:Org
	Set BREADCRUMB=} Home } %OPERATION%
	REM Init values for the current project
	CALL "%STG%\orgs.cmd"
	REM Select an org
	CALL "%SYS%\menu_org.cmd"
	IF "%NEXT%"=="ACTION" GOTO Action
	IF "%NEXT%"=="BACK" GOTO Command
	IF "%NEXT%"=="QUIT" GOTO End

:Package
	Set BREADCRUMB=} Home } %OPERATION% } %ORG%
	REM Init values for the current project
	CALL "%STG%\packages-org%ONB%.cmd"
	REM Select a package
	CALL "%SYS%\menu_package.cmd"
	IF "%NEXT%"=="BACK" GOTO Org
	IF "%NEXT%"=="QUIT" GOTO End
	Set BREADCRUMB=} Home } %OPERATION% } %ORG% } %PKG%

REM ===============================================================

:Action
	REM Time for action...
	CALL "%SYS%\menu_action.cmd"
	GOTO Command

:End

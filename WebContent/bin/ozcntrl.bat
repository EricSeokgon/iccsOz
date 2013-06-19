@echo off
rem -----------------------------------------------------
rem
rem            OZ Contorl(OZA SHELL)
rem
rem  This script file written and tested under Windows 2000
rem
rem  User should set following variables:
rem
rem  JAVA_HOME      - Determines the version of Java used to start
rem                   OZ Server. This variable must point to the
rem                   root directory of a JDK or JRE installation.
rem                   for an up-to-date list of supported JVMs your platform.
rem  USER_CLASSPATH - Use this variable to append jar files or directories to
rem                   the OZLIB.
rem  MAX_MEMORY     - Maximum memory used by OZ Server. (The unit is mega-byte.)
rem  MIN_MEMORY     - Minimum memory used by OZ Server. (The unit is mega-byte.)
rem
rem -----------------------------------------------------

rem  -----------------------------------
rem    Set user-defined variables
rem  -----------------------------------

set JAVA_HOME=..\..\JRE
set MAX_MEMORY=256
set MIN_MEMORY=128
set JAVA_OPTION=

set OZSERVER_HOME=..
set USER_CLASSPATH=%OZSERVER_HOME%\uds\
set OZLIBALL=%OZSERVER_HOME%\WEB-INF\lib
set OZJLIBALL=%OZSERVER_HOME%\UniversalDriver


rem -----------------------------------
rem        OZ Main Class
rem -----------------------------------
set OZLIB=%OZLIB%;%OZLIBALL%\ozsfw51.jar;%OZSERVER_HOME%\conf\
set OZLIB=%OZLIB%;%OZLIBALL%\ozusl.jar

rem -----------------------------------
rem        for Servlet
rem -----------------------------------
rem set OZLIB=%OZLIB%;%OZLIBALL%\servlet.jar

rem -----------------------------------------------------
rem        HTTPS/SSL Module
rem -----------------------------------------------------
set OZLIB=%OZLIB%;%OZLIBALL%\jcert.jar
set OZLIB=%OZLIB%;%OZLIBALL%\jnet.jar
set OZLIB=%OZLIB%;%OZLIBALL%\jsse.jar

rem -----------------------------------
rem        Library for Logging
rem -----------------------------------
set OZLIB=%OZLIB%;%OZLIBALL%\log4j.jar

rem -----------------------------------
rem        Library for XML
rem -----------------------------------
set OZLIB=%OZLIB%;%OZLIBALL%\xalan.jar
set OZLIB=%OZLIB%;%OZLIBALL%\xercesImpl.jar
set OZLIB=%OZLIB%;%OZLIBALL%\xml-apis.jar
set OZLIB=%OZLIB%;%OZLIBALL%\parser.jar
set OZLIB=%OZLIB%;%OZLIBALL%\xerces.jar
set OZLIB=%OZLIB%;%OZLIBALL%\dom4j-1.6.1.jar
set OZLIB=%OZLIB%;%OZLIBALL%\jaxen-1.1.6.jar
set OZLIB=%OZLIB%;%OZLIBALL%\crimson.jar
set OZLIB=%OZLIB%;%OZLIBALL%\stax-1.2.0.jar
set OZLIB=%OZLIB%;%OZLIBALL%\jsr173_api.jar

rem -----------------------------------
rem        Library for XML Store
rem -----------------------------------
set OZLIB=%OZLIB%;%OZLIBALL%\dtdparser12.jar

rem -----------------------------------
rem      Repository File Sysgtem DB
rem -----------------------------------
set OZLIB=%OZLIB%;%OZLIBALL%\hsqldb.jar

rem -----------------------------------
rem        Library for JavaScript
rem -----------------------------------
set OZLIB=%OZLIB%;%OZLIBALL%\js.jar


# -----------------------------------
#      USL Jar for USL
# -----------------------------------
set OZLIB=%OZLIB%;%OZLIBALL%\OZUSLServerSession.jar
set OZLIB=%OZLIB%;%OZLIBALL%\OZUSLServerDES128.jar

rem -----------------------------------
rem      JDBC Driver for Oracle
rem -----------------------------------
set OZLIB=%OZLIB%;%OZJLIBALL%\classes12.zip

rem -----------------------------------
rem      JDBC Driver for Mysql (5.1.5)
rem -----------------------------------
set OZLIB=%OZLIB%;%OZJLIBALL%\mysql5.1.5.jar

rem  If your version of oracle is 7 and
rem  its character set is DBCS,
rem  then delete 'rem' of next line
rem  set OZLIB=%OZLIB%;%OZLIBALL%\ijava.jar

rem -----------------------------------
rem     JDBC Driver for Informix
rem -----------------------------------
set OZLIB=%OZLIB%;%OZJLIBALL%\ifxjdbc.jar

rem -----------------------------------
rem   JDBC Driver for Syabse
rem -----------------------------------
set OZLIB=%OZLIB%;%OZJLIBALL%\jconn2.jar

rem -----------------------------------
rem      JDBC Driver for MSSQL
rem -----------------------------------
rem set OZLIB=%OZLIB%;%OZLIBALL%\jkjdbc2.jar
set OZLIB=%OZLIB%;%OZJLIBALL%\msbase.jar
set OZLIB=%OZLIB%;%OZJLIBALL%\msutil.jar
set OZLIB=%OZLIB%;%OZJLIBALL%\mssqlserver.jar

rem -----------------------------------
rem      JDBC Driver for IBM DB2
rem -----------------------------------
set OZLIB=%OZLIB%;%OZJLIBALL%\db2java.zip

rem -----------------------------------
rem      JDBC Driver for Uni-SQL
rem -----------------------------------
set OZLIB=%OZLIB%;%OZJLIBALL%\unisqljdbc10.jar


rem -----------------------------------
rem      USER_CLASSPATH
rem -----------------------------------
set OZLIB=%OZLIB%;%USER_CLASSPATH%

rem ---------------------------------
rem     WebService added 
rem ----------------------------------
set OZLIB=%OZLIB%;%OZLIBALL%\activation.jar
set OZLIB=%OZLIB%;%OZLIBALL%\mail.jar
set OZLIB=%OZLIB%;%OZLIBALL%\soap2_3_1.jar

set JAVA_OPTION=

if not "%1" == "-start" goto notStart
set JAVA_OPTION= %JAVA_OPTION% -Xms%MIN_MEMORY%m -Xmx%MAX_MEMORY%m
:notStart

%JAVA_HOME%\bin\java %JAVA_OPTION% -cp %OZLIB% oz.admin.shell.server.OZAShell %1 %2 %3 %4 %5 %6 %7 %8 %9

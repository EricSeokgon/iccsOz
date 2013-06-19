@echo off
rem -----------------------------------------------------
rem
rem            OZ ENCRIPTION (OZA SHELL)
rem
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
set MAX_MEMORY=256M
set MIN_MEMORY=128M
set JAVA_OPTION=-Xms%MIN_MEMORY% -Xmx%MAX_MEMORY%


set OZSERVER_HOME=..
set USER_CLASSPATH=%OZSERVER_HOME%\uds\
set OZLIBALL=%OZSERVER_HOME%\WEB-INF\lib
set OZLIB=%OZLIBALL%\ozsfw51.jar;%OZSERVER_HOME%\conf\


set JAVA_OPTION=



%JAVA_HOME%\bin\java %JAVA_OPTION% -cp %OZLIB% oz.framework.db.Auth %1 %2 %3

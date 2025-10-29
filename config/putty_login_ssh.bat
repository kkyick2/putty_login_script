@echo off
FOR %%A IN ("%~dp0.") DO SET ROOTDIR=%%~dpA
SET CONFDIR=%ROOTDIR%\config
SET IPADDR=%1
SET PORT=%2
SET CREDFILE=%3

for /F "tokens=1,2 delims=," %%a in (%CREDFILE%) do ( 
 start %CONFDIR%\putty.exe -ssh %%a@%IPADDR% -pw %%b -P %PORT%
 )
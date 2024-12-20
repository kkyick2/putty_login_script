@echo off
SET IPADDR=%1
SET PORT=%2
SET CREDFILE=%3

for /F "tokens=1,2 delims=," %%a in (%CREDFILE%) do ( 
 start putty.exe -telnet -P %PORT% %IPADDR%
 )
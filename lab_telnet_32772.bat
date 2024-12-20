@echo off
SET IPADDR=172.16.11.11
SET PORT=32772
SET CREDFILE=cred.txt

putty_login_telnet.bat %IPADDR% %PORT% %CREDFILE%
@echo off
SET IPADDR=172.16.11.53
SET PORT=22
SET CREDFILE=cred.txt

putty_login_ssh.bat %IPADDR% %PORT% %CREDFILE%
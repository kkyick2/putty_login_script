@echo off
SET IPADDR=10.211.0.221
SET PORT=22
SET CREDFILE=cred_empf_f5.txt

putty_login_ssh.bat %IPADDR% %PORT% %CREDFILE%
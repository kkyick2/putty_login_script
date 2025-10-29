@echo off
SET IPADDR=172.31.210.101
SET PORT=22
SET CREDFILE=cred_empf_f5.txt

putty_login_ssh.bat %IPADDR% %PORT% %CREDFILE%
@echo off
SET IPADDR=172.31.210.12
SET PORT=22
SET CREDFILE=cred_empf_sw.txt

putty_login_ssh.bat %IPADDR% %PORT% %CREDFILE%
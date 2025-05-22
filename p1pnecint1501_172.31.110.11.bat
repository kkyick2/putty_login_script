@echo off
SET IPADDR=172.31.110.11
SET PORT=22
SET CREDFILE=cred_empf.txt

for /F "tokens=1,2 delims=," %%a in (%CREDFILE%) do ( 
 start putty.exe -ssh %%a@%IPADDR% -pw %%b -P %PORT%
 )
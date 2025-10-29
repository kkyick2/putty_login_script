# putty login script

- Use bat to connect putty ssh/telnet terminal

## How to start ?

Step to use putty login script

1/ use create_login_bat.ps1 script to create login bat files

```bat
::edit create_login_bat.csv
HOSTNAME,IPADDR,PORT,CREDFILE,BAT
server01,192.168.1.100,22,server01_cred.txt,putty_login_ssh.bat
server02,10.0.0.55,3389,server02_cred.txt,putty_login_ssh.bat
```

2/ In config folder, create cred.txt files

3/ Create login bat in site folder

## Project File structure

```sh
putty_login_script/
│──create_login_bat/
│   ├── create_login_bat.ps1
│   └── create_login_bat.csv
│── config/
│   ├── putty_login_ssh.bat
│   ├── putty_login_telnet.bat
│   ├── putty.exe
│   └── cred.txt
└── site_folder/
    ├── switch1.bat
    └── switch2.bat
```

## update by jackyyick

- 20251030

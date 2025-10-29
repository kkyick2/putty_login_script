# Save this as create_login.ps1 and run in the same folder as your CSV

# Define path to CSV
$csvFile = "create_login_bat.csv"

# Import CSV, skipping blank or header lines
Import-Csv -Path $csvFile | ForEach-Object {
    $hostname = $_.HOSTNAME
    $ipaddr   = $_.IPADDR
    $port     = $_.PORT
    $credfile = $_.CREDFILE
    $bat      = $_.BAT

    $outfile = "$hostname.bat"

@"
@echo off
FOR %%A IN ("%~dp0.") DO SET ROOTDIR=%%~dpA
SET CONFDIR=%ROOTDIR%\config
SET IPADDR=$ipaddr
SET PORT=$port
SET CREDFILE=%CONFDIR%\$credfile

%CONFDIR%\$bat %IPADDR% %PORT% %CONFDIR%\$credfile
"@ | Set-Content -NoNewline -Encoding ASCII $outfile

Write-Host "Generated: $outfile" -ForegroundColor Green
}
Write-Host "`nAll .bat files generated successfully!" -ForegroundColor Cyan
pause  # Uncomment if running via double-click

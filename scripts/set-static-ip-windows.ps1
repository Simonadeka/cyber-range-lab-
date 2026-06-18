# Set static IP for Windows 10 - 192.168.56.104
# Run this in PowerShell as Administrator

$Interface = Get-NetAdapter | Where-Object {$_.Status -eq "Up"} | Select-Object -First 1

New-NetIPAddress -InterfaceAlias $Interface.Name -IPAddress 192.168.56.104 -PrefixLength 24 -DefaultGateway 192.168.56.1

Write-Host "IP set to 192.168.56.104"
Write-Host "Run as Administrator or it will fail!"

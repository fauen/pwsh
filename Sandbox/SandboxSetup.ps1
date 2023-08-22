Add-Type -AssemblyName PresentationFramework
powershell.exe Set-ExecutionPolicy Unrestricted -Scope CurrentUser -Force | Out-Host
powershell.exe C:\Temp\wingetDownloadInstall.ps1 | Out-Host
#powershell.exe C:\Temp\pwshDownloadInstall.ps1 | Out-Host
#New-Item -Path C:\Users\WDAGUtilityAccount\Desktop -ItemType File -Name "Done.txt"
[System.Windows.MessageBox]::Show("winget is now installed!","Complete!","OK","None")
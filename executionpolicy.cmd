REM This is used for the SandboxConfig.wsb if you want to
REM download and install PowerShell 7. It's very slow
REM though so I don't recommend it and that is why the 
REM config doesn't have it included anymore.

powershell.exe Set-ExecutionPolicy Unrestricted -Scope CurrentUser -Force
powershell.exe C:\Users\WDAGUtilityAccount\Downloads\pwshDownloadInstall.ps1
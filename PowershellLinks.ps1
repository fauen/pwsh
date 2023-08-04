# Time to link some stuff.
$configPath = Join-Path -Path "$HOME" -ChildPath 'pwsh'

if ($PSVersionTable.Platform -eq "Unix") {
    if (-not (Test-Path -Path $HOME/.config/powershell)) {
        mkdir $HOME/.config/powershell
        Write-Verbose "Directory has been created."
    }
}
else {
    Start-Process ms-settings:developers
    $enableDev = Get-Process SystemSettings
    Wait-Process -Id $enableDev.Id
}
New-Item -ItemType SymbolicLink -Path "$PROFILE" -Target "$configPath\Microsoft.PowerShell_profile.ps1"
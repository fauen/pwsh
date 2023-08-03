# Time to link some stuff.
$configPath = Join-Path -Path "$HOME" -ChildPath 'pwsh'

if ($PSVersionTable.Platform -eq "Unix") {
    if (-not (Test-Path -Path $HOME/.config/powershell)) {
        mkdir $HOME/.config/powershell
        Write-Verbose "Directory has been created."
    }
#    ln -s $HOME/pwsh/Microsoft.PowerShell_profile.ps1 $HOME/.config/powershell/$1
#    ln -s $HOME/pwsh/PowershellPrompt.ps1 $HOME/.config/powershell/$1
#    ln -s $HOME/pwsh/PowershellAliases.ps1 $HOME/.config/powershell/$1
    New-Item -ItemType SymbolicLink -Path "$HOME/.config/powershell/Microsoft.PowerShell_profile.ps1" -Target "$configPath/Microsoft.PowerShell_profile.ps1"
}
else {
    Start-Process ms-settings:developers
    $enableDev = Get-Process SystemSettings
    Wait-Process -Id $enableDev.Id
    New-Item -ItemType SymbolicLink -Path "$PROFILE" -Target "$configPath\Microsoft.PowerShell_profile.ps1"
    #Start-Process "pwsh" -Verb RunAs -ArgumentList "-file $HOME\pwsh\PowershellLinksWin.ps1"
}

# On Windows, make sure your machine has enabled developer mode
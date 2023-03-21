# Time to link some stuff.

if ($PSVersionTable.Platform -eq "Unix") {
    if (-not (Test-Path -Path $HOME/.config/powershell)) {
        mkdir $HOME/.config/powershell
        Write-Verbose "Directory has been created."
    }
    else {
        Write-Verbose "Directory already exists."
    }
    ln -s $HOME/pwsh/Microsoft.PowerShell_profile.ps1 $HOME/.config/powershell/$1
    ln -s $HOME/pwsh/PowershellPrompt.ps1 $HOME/.config/powershell/$1
    ln -s $HOME/pwsh/PowershellAliases.ps1 $HOME/.config/powershell/$1
}
else {
        Start-Process "pwsh" -Verb RunAs -ArgumentList "-file $HOME\pwsh\PowershellLinksWin.ps1"
    }
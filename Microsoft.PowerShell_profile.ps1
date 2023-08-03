# Import or Install modules
$configPath = Join-Path -Path "$HOME" -ChildPath "pwsh\"

if (Get-Module -ListAvailable -Name Terminal-Icons) {
    Import-Module -Name Terminal-Icons -ErrorAction Ignore
}
else {
    Set-PSRepository PSGallery -InstallationPolicy Trusted -ErrorAction Inquire
    Install-Module Terminal-Icons -ErrorAction Ignore
    Import-Module Terminal-Icons -ErrorAction Ignore
}

# Load the Prompt and import custom Modules. 
if ($PSVersionTable.Platform -eq "Unix") {
    . $configPath`PowershellPrompt.ps1
    . $configPath`ImportModules.ps1
}
else {
    . $configPath`PowershellPrompt.ps1
    . $configPath`ImportModules.ps1
}

# The ErrorAction here is specifically for Unix platforms.
if (-not (Set-PSReadLineOption -PredictionViewStyle ListView)) {
    Set-PSReadLineOption -PredictionViewStyle ListView
}

# Set Aliases if specific module is loaded.
if (Get-Module -Name 'GitHub') {
    New-Alias -Name "gstatus" -Value Read-GitHub -Description "git status"
    New-Alias -Name "gpull" -Value Receive-GitHub -Description "git pull"
    New-Alias -Name "gacp" -Value Write-GitHub -Description "git add .; git commit; git push"
}
else {
    Write-Warning "Could not load aliases."
}
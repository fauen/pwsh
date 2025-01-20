New-Alias -Name "ls -la" -Value Get-ChildItem -Force

# Set Aliases if specific module is loaded.
if (Get-Module -Name 'GitHub') {
    New-Alias -Name "gstatus" -Value Read-GitHub -Description "git status"
    New-Alias -Name "gpull" -Value Receive-GitHub -Description "git pull"
    New-Alias -Name "gacp" -Value Write-GitHub -Description "git add .; git commit; git push"
}
else {
    Write-Warning "Could not load aliases."
}


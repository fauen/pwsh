$dirlist = "bin","dotfiles","itops","majnkraft.com","python"
foreach ($item in $dirlist) {
    Write-Host "Entering $item..."
    Set-Location $item; git pull; Set-Location ..
}
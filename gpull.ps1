$children = Get-ChildItem -Attribute Directory
foreach ($item in $children) {
    Write-Host "Entering $item..."
    Set-Location $item; git pull; Set-Location ..
}

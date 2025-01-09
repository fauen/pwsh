$children = Get-ChildItem -Attribute Directory
foreach ($item in $children) {
    Write-Host "Entering $item..." -ForegroundColor Green
    Set-Location $item; git status; Set-Location ..
}

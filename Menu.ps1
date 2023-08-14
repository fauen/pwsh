function Show-Menu {
    param (
        [string]$Title = "An awesome menu!"
    )
    Clear-Host
    Write-Host "========== $Title ==========="
    Write-Host "Press '1' for the first option."
    Write-Host "Press '2' for the second option."
    Write-Host "Press '3' for the third option."
    Write-Host "Press 'Q' to quit."
}

do {
    Show-Menu
    $picker = Read-Host "Pick an option"
    switch ($picker) {
        1 {
            Write-Host "You picked one!"
        }
        2 {
            Write-Host "You picked two!"
        }
        3 {
            Write-Host "You picked three!"
        }
    }
    Pause
}
until ($picker -eq "q")
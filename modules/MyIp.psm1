function Get-MyIp {
    param (
        [Parameter(Mandatory=$false)]
        [string]$Full
    )
    if ($Full) {
        Invoke-RestMethod "ipall.backman.io"
    }
    else {
        Invoke-RestMethod "ip.backman.io"
    }
    
}
function Invoke-Docker {
    param (
        [Parameter(Mandatory=$true)]
        [string]$image
    )
    if (Get-Command 'docker') {
        docker run -it --rm
    }
    else {
        Write-Warning "Docker not installed."
    }
}
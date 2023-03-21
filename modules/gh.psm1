function GH {
    param (
        [Parameter(Mandatory=$false)]
        [switch]$Read,
        [switch]$Receive,
        [switch]$Send,
        [switch]$Write
    ) 
    if ($Read) {
        git status
    }
    elseif ($Receive) {
        git pull
    }
    elseif ($Send) {
        git push
    }
    elseif ($Write) {
        git add .; git commit; git push
    }
    else {
        Write-Warning -Message "Git is not installed!"
    }
}
<#
    .SYNOPSIS
    An alternative way of using some simple git commands.

    .DESCRIPTION
    The whole point of this was to have PowerShell like git commands instead of using the normal ones.
    Why? Good learning experience.

    .PARAMETER Read
    -Read = git status

    .PARAMETER Receive
    -Receive = git pull

    .PARAMETER Send
    -Send = git push

    .PARAMETER Write
    -Write = git add .; git commit; git push
#>
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
        git status
    }
}
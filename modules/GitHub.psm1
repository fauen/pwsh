function Read-GitHub {
    param (
    )
    if (Get-Command 'git') {
        git status
    }
    else {
        Write-Warning "Git not installed."
    }
}

function Receive-GitHub {
    param (
    )
    if (Get-Command 'git') {
        git pull
    }
    else {
        Write-Warning "Git not installed."
    }
}

function Send-GitHub {
    param (
    )
    if (Get-Command 'git') {
        git push
    }
    else {
        Write-Warning "Git not installed."
    }
}

function Write-GitHub {
    param (
    )
    if (Get-Command 'git') {
        git add .; git commit; git push
    }
    else {
        Write-Warning "Git not installed."
    }
}
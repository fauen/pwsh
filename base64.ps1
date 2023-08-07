function ConvertTo-Base64 {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory=$False)]
        [string]$UserInput
    )
    if ($UserInput) {
        $Bytes = [System.Text.Encoding]::UTF8.GetBytes($UserInput)
        $Encode = [System.Convert]::ToBase64String($Bytes)
        Write-Host $Encode
    }
    else {
        $UserInput = Read-Host "Input string"
        $Bytes = [System.Text.Encoding]::UTF8.GetBytes($UserInput)
        $Encode = [System.Convert]::ToBase64String($Bytes)
        Write-Host $Encode
    }
    
}

function ConvertFrom-Base64 {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory=$False)]
        [string]$UserInput
    )
    if ($UserInput) {
        $Decode = [System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String($UserInput))
        Write-Host $Decode
    }
    else {
        $UserInput = Read-Host -Prompt "Input base64"
        $Decode = [System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String($UserInput))
        Write-Host $Decode
    }
    
}
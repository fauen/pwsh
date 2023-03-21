if ($PSVersionTable.Platform -eq "Unix") {
    if (-not (Test-Path $HOME/.config/.gramtoken)) {
        Read-Host "Telegram token: " -MaskInput | Out-File -FilePath $HOME/.config/.gramtoken
        (Get-Item $HOME/.config/.gramtoken).Attributes += 'Hidden'
    }
    if (-not (Test-Path $HOME/.config/.gramchat)) {
        Read-Host "Telegram chat id: " -MaskInput | Out-File -FilePath $HOME/.config/.gramchat
        (Get-Item $HOME/.config/.gramchat).Attributes += 'Hidden'
    }
    $gramToken = (Get-Content $HOME/.config/.gramtoken)
    $gramChat = (Get-Content $HOME/.config/.gramchat)
}
else {
    if (-not (Test-Path $HOME\.config\.gramtoken)) {
        Read-Host "Telegram token: " -MaskInput | Out-File -FilePath $HOME\.config\.gramtoken
        (Get-Item $HOME\.config\.gramtoken).Attributes += 'Hidden'
    }
    if (-not (Test-Path $HOME\.config\.gramchat)) {
        Read-Host "Telegram chat id: " -MaskInput | Out-File -FilePath $HOME\.config\.gramchat
        (Get-Item $HOME\.config\.gramchat).Attributes += 'Hidden'
    }
    $gramToken = (Get-Content $HOME\.config\.gramtoken)
    $gramChat = (Get-Content $HOME\.config\.gramchat)
}

if (-not (Get-Module PoshGram)) {
    Install-Module PoshGram
    Import-Module PoshGram
}
else {
    Import-Module PoshGram
}

$gramMsg = Read-Host "What do you want to send? "
Send-TelegramTextMessage -BotToken $gramToken -ChatID $gramChat -Message $gramMsg
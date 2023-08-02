# Load config
[xml]$poshConfig = Get-Content "poshConfig.xml"

if (-not (Get-Module PoshGram)) {
    Install-Module PoshGram
    Import-Module PoshGram
}
else {
    Import-Module PoshGram
}

$gramMsg = Read-Host "What do you want to send? "
Send-TelegramTextMessage -BotToken $poshConfig.Settings.Token -ChatID $poshConfig.Settings.Chat -Message $gramMsg
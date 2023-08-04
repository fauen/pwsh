# Load configuration.
[xml]$TelegramConfig = Get-Content "TelegramConfig.xml"
if ($TelegramConfig.Settings.BotToken -and $TelegramConfig.Settings.ChatID) {
    $TelegramToken = $TelegramConfig.Settings.BotToken
    $TelegramChat = $TelegramConfig.Settings.ChatID
    $TelegramText = Read-Host -Prompt "Input your message"
}
else {
    $TelegramToken = Read-Host -Prompt "Input token" -MaskInput
    $TelegramChat = Read-Host -Prompt "Input Chat ID" -MaskInput
    $TelegramText = Read-Host -Prompt "Input your message"
}

Invoke-RestMethod -Method Post -Uri "https://api.telegram.org/bot$TelegramToken/sendMessage?chat_id=$TelegramChat&text=$TelegramText"
# Load configuration
[xml]$DiscordConfig = Get-Content "DiscordConfig.xml"
if ($DiscordConfig.Settings.Token -and $DiscordConfig.Settings.Id ) {
    $DiscordToken = $DiscordConfig.Settings.Token
    $DiscordId = $DiscordConfig.Settings.Id
    $DiscordMessage = Read-Host -Prompt "Input message"
}
else {
    $DiscordToken = Read-Host -Prompt "Input webhook token" -MaskInput
    $DiscordId = Read-Host -Prompt "Input webhook id" -MaskInput
    $DiscordMessage = Read-Host -Prompt "Input message"
}
$DiscordPayload = @{
    content="$DiscordMessage"
}

Invoke-RestMethod -Method Post -Uri "https://discord.com/api/webhooks/$DiscordId/$DiscordToken" -Body ($DiscordPayload | ConvertTo-Json) -ContentType 'application/json'
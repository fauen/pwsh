$inputText = Read-Host "Input string"
$bytes = [System.Text.Encoding]::UTF8.GetBytes($inputText)
$encode = [Convert]::ToBase64String($bytes)
$encode
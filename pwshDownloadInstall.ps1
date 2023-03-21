Set-ExecutionPolicy Unrestricted -Scope Process -Force
# First we need to get the actual content.
$PowerShellURL = Invoke-WebRequest -Uri "https://github.com/PowerShell/PowerShell/releases/latest/" -Headers @{'Accept'='application/json'}
# Here we convert is to a JSON response for ease of access.
$ConvertURL = $PowerShellURL.Content | ConvertFrom-Json
# Get the latest tag.
$LatestTag = $ConvertURL.tag_name
# To get the latest version we remove the v from the tag.
$LatestVersion = $ConvertURL.tag_name.Substring(1)
# Now we download the file!
Invoke-WebRequest -Uri "https://github.com/PowerShell/PowerShell/releases/download/${LatestTag}/PowerShell-${LatestVersion}-win-x64.msi" -OutFile "C:\Users\$env:USERNAME\Powershell-$LatestVersion-win-x64.msi"
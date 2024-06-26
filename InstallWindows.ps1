# Always nice to have a .config directory.
if (-not(Test-Path -Path $HOME\.config)) {
    New-Item -ItemType Directory -Path $HOME\.config
}

Clear-Host

$userOption = @"
1. Install applications through winget.
2. Link config file from github repo.
3. Install WSL
4. Check the weather (because why not?).
0. Nothing.

"@

$userOption

$answer = Read-Host 'What do you want to do?'
switch ( $answer ) {
    1 {
        $packages = Get-Content "InstallWindowsPackageList.txt"
        foreach ($application in $packages) {
            Write-Host -ForegroundColor Yellow "Trying to install $application..."
            winget install --id=$application -e --accept-source-agreements
        }
#        Write-Output "Trying to install Discord..."
#        winget install --id=Discord.Discord -e --accept-source-agreements
#        Write-Output "Trying to install Visual Studio Code..."
#        winget install --id=Microsoft.VisualStudioCode -e --accept-source-agreements
#        Write-Output "Trying to install 7zip..."
#        winget install --id=7zip.7zip -e --accept-source-agreements
#        Write-Output "Trying to install Firefox..."
#        winget install --id=Mozilla.Firefox -e --accept-source-agreements
#        Write-Output "Trying to install PowerToys..."
#        winget install --id=Microsoft.PowerToys -e --accept-source-agreements
#        Write-Output "Trying to install Spotify..."
#        winget install --id=Spotify.Spotify -e --accept-source-agreements
#        Write-Output "Trying to install VLC..."
#        winget install --id=VideoLAN.VLC -e --accept-source-agreements
    }
    2 {
        $filePath = "$HOME\pwsh\PowershellLinks.ps1"
        if (Test-Path -Path $filePath) {
            Invoke-Expression -Command $filePath
        }
        else {
            Write-Warning 'Path does not exist!'
        }
    }
    3 {
        wsl.exe --install
        if ($?) {
            Write-Output "WSL is installed"
        }
        else {
            Write-Warning "Something went wrong..."
        }
    }
    4 {
        (Invoke-WebRequest "https://wttr.in/?m").Content
    }
    0 {
        break
    }
    default {
        .\InstallWindows.ps1
    }
}
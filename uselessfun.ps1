# There is no point in this. Just something I wanted to do.
$validAnswer = $false
while (!$validAnswer) {
    
$options = @"

1. Dad joke
2. Affirmation
3. Guess age from name
4. Chuck Norris fact
5. Country facts
0. Exit
"@

$options | Out-Host

$answer = Read-Host "Pick what you need today"

switch ($answer) {
    1 {
        $dadjoke = (Invoke-RestMethod -Method Get -Uri "https://icanhazdadjoke.com" -Headers @{Accept='text/plain'})
        Clear-Host
        Write-Host -ForegroundColor Green $dadjoke | Out-Host
    }
    2 {
        $affirmation = (Invoke-RestMethod -Method Get -Uri "https://www.affirmations.dev")
        Clear-Host
        Write-Host -ForegroundColor Magenta $affirmation.affirmation | Out-Host
    }
    3 {
        $yourName = Read-Host "Input your name"
        $guessAge = (Invoke-RestMethod -Method Get -Uri "https://api.agify.io/?name=$yourname")
        Clear-Host
        $guessAge | Out-Host
    }
    4 {
        $chuck = (Invoke-RestMethod -Method Get -Uri "https://api.chucknorris.io/jokes/random")
        Clear-Host
        $chuck.value | Out-Host
    }
    5 {
        $countryName = Read-Host "Input country"
        $country = (Invoke-RestMethod -Method Get -Uri "https://restcountries.com/v3.1/name/$countryName")
        Clear-Host
        $country | Out-Host
        Write-Output "For more details use the `$country variable."
    }
    0 {
        $validAnswer = $true
        Break
    }
    Default {
        $validAnswer = $true
        Break
    }
}
}
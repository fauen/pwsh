# There is no point in this. Just something I wanted to do.

$options = @"
1. Dad joke
2. Affirmation
3. Guess age from name
4. Chuck Norris fact
5. Country facts
"@

$options | Out-Host

$answer = Read-Host "Pick what you need today"

switch ($answer) {
    1 {
        $dadjoke = (Invoke-RestMethod -Method Get -Uri "https://icanhazdadjoke.com" -Headers @{Accept='text/plain'})
        $dadjoke
    }
    2 {
        $affirmation = (Invoke-RestMethod -Method Get -Uri "https://www.affirmations.dev")
        $affirmation.affirmation
    }
    3 {
        $yourName = Read-Host "Input your name"
        $guessAge = (Invoke-RestMethod -Method Get -Uri "https://api.agify.io/?name=$yourname")
        $guessAge
    }
    4 {
        $chuck = (Invoke-RestMethod -Method Get -Uri "https://api.chucknorris.io/jokes/random")
        $chuck.value
    }
    5 {
        $countryName = Read-Host "Input country"
        $country = (Invoke-RestMethod -Method Get -Uri "https://restcountries.com/v3.1/name/$countryName")
        $country
        Write-Output "For more details use the `$country variable."
    }
    Default {
        Break
    }
}
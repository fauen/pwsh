# There is no point in this. Just something I wanted to do.

$options = @"
1. Dad joke
2. Affirmation
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
    Default {
        Break
    }
}
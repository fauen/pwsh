function New-Password {
    [CmdletBinding()]
    param (
        [Parameter()]
        [int]$PasswordLength = 10,
        [Parameter()]
        [switch]$UpperCase,
        [Parameter()]
        [switch]$LowerCase,
        [Parameter()]
        [switch]$Numeric,
        [Parameter()]
        [switch]$Special
    )

    $Password =

    if ($UpperCase) {
        $Password += ($UpperCaseSet = 'A'..'Z')
    }
    if ($LowerCase) {
        $Password += ($LowerCaseSet = 'a'..'z')
    }
    if ($Numeric) {
        $Password += ($NumericSet = '0'..'9')
    }
    if ($Special) {
        $Password += ($SpecialSet = '!@#$%&*'.ToCharArray())
    }

    $RetrieveSets = $UpperCaseSet + $LowerCaseSet + $NumericSet + $SpecialSet
    if ($Password) {
        $Password = ($RetrieveSets | Get-Random -Count $PasswordLength) -join ''
        $Password
    }
    else {
        Get-Help New-Password
    }
}
<#
    .SYNOPSIS
    Easy way to check the current and upcoming weather.

    .DESCRIPTION
    The main idea if this function is to use the service wttr.in by Igor Chubin (https://github.com/chubin).
    There are multiple ways of using the service but in this case we focus on forecast and a small version of wttr.in.
    It's using the metric system not freedom units.

    .PARAMETER City
    -City is used to specify a specific city like Stockholm or NYC.
     
    .PARAMETER Small
    -Small will display a really small version of the current weather.

    .LINK
    Service used: https://github.com/chubin/wttr.in

    .EXAMPLE
    Get-Weather
    This will grab your current location and show the forecast for it.

    .EXAMPLE
    Get-Weather -City Stockholm
    This will show you the forecast for the city Stockholm.

    .EXAMPLE
    Get-Weather -Small
    This will show the current weather at your location. No forecast.

    .NOTES
    Author: Daniel Bäckman
    Date: 2023-03-21
    URL: https://github.com/fauen
#>

function Get-Weather {
    [CmdletBinding()]
    param (
       [Parameter(Mandatory=$False)]
       [String]$City,
       [Switch]$Small
    )
   if ( $City -and $Small ) {
    Invoke-RestMethod "https://wttr.in/${City}?m?0"
   }
   elseif ($City) {
    Invoke-RestMethod "https://wttr.in/${City}?m"
   }
   elseif ($Small) {
    Invoke-RestMethod "https://wttr.in/?m?0"
   }
   else {
    Invoke-RestMethod "https://wttr.in/?m"
   }
}
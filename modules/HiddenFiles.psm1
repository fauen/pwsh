<#
    .SYNOPSIS
    Always adds the `-F` flag to Get-ChildItem.

    .DESCRIPTION
    Get-ChiltItem is very nice to have but with the built-it alias for `ls` I always miss the `-a` flag on nix systems.
    Adding `-F` assists in this and will show you all you need.

    .LINK
    https://github.com/fauen/pwsh/modules

    .EXAMPLE
    Get-HiddenFiles
    Use an **Alias** for it.

    .NOTES
    Author: Daniel Bäckman
    Date: 2025-06-13
    URL: https://github.com/fauen
#>

function Get-HiddenFiles {
    [CmdletBinding()]
    param (
       [Parameter(Position = 0, ValueFromPipeline = $true)]
       [string]$Path = "."
    )
    Get-ChildItem -Path $Path -Force
}

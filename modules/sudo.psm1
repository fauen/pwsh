function Invoke-Sudo {
    [CmdletBinding()]
    [Alias("sudo")]
    param (
        [Parameter(Position=0)]
        [string]$Command,
        [Parameter(ValueFromRemainingArguments=$True)]
        [string[]]$CommandLine
    )
}
switch ($Command) {
    default { 
        Start-Process "pwsh" -Verb RunAs $Command
    }
}
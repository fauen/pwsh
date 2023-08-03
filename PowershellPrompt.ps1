$username = [System.Environment]::UserName
$machinename = [System.Environment]::MachineName

function prompt {
   "$username`@$machinename`:$(Get-Location) >>> " 
}
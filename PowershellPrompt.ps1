$username = [System.Environment]::UserName
$machinename = [System.Environment]::MachineName
#$location = [System.Environment]::CurrentDirectory

function prompt {
   "$username`@$machinename`:$(Get-Location) >>> " 
}
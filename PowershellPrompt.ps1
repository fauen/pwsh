$username = [System.Environment]::UserName
$machinename = [System.Environment]::MachineName
$location = [System.Environment]::GetEnvironmentVariable('PWD')

function prompt {
   "$username`@$machinename`:$location >>> " 
}
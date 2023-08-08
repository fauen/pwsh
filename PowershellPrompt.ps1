$username = [System.Environment]::UserName
$machinename = [System.Environment]::MachineName

function prompt {
   if (!$?) {
      "$username`@$machinename`:$(Get-Location) `e[31m>>>`e[0m " 
   }
   else {
      "$username`@$machinename`:$(Get-Location) `e[32m>>>`e[0m " 
   }
}

function viprompt {
  if ($args[0] -eq 'Command') {
      Write-Host "[c]" + $Function:prompt
  }
}
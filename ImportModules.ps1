$modulesPath = Join-Path -Path "$HOME\pwsh\" -ChildPath "modules"
foreach ($i in Get-ChildItem $modulesPath) {
    Import-Module $i
}
#if ($args[0]) {
#    foreach ($i in Get-ChildItem $args[0]) {
#        Import-Module $i
#    }
#}
#else {
#    foreach ($i in Get-ChildItem "$HOME\pwsh\modules") {
#        Import-Module $i
#    }
#}
$modulesPath = Join-Path -Path "$HOME\pwsh\" -ChildPath "modules"
foreach ($i in Get-ChildItem $modulesPath) {
    Import-Module $i
}
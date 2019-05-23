# The script checks the time source for all DCs in the current domain

# Tested 190523

$DomainControllers = Get-ADDomainController -Filter * | Select-Object -ExpandProperty hostname
$Separator = "-----"
Write-Host $Separator
foreach ($DomainController in $DomainControllers) {
    Write-Host $DomainController
    w32tm /query /source /computer:$DomainController
    Write-Host $Separator
}
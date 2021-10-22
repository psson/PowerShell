Import-Module SQLPS
$sqlserver = 'STORMBRINGER\SQLEXPRESS'
Invoke-Sqlcmd
Set-Location sqlserver:\sql\$sqlserver
Get-ChildItem databases
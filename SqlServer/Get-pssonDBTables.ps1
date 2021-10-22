# Simple commands to run SQL statements to fetch a list of tables in a database etc

$tables = invoke-sqlcmd -server STORMBRINGER\SQLEXPRESS -Database master "select ss.name as schema_name, so.name as table_name, ss.name+'.'+so.name as full_name from sysobjects so inner join sys.schemas ss on ss.schema_id=so.uid where type='u' order by ss.name, so.name" 

$tables

$sourceserver = 'STORMBRINGER\SQLEXPRESS'
$databases = Invoke-Sqlcmd -server $sourceserver 'SELECT name FROM master.sys.databases WHERE database_id > 1 ORDER BY NAME'
$databases
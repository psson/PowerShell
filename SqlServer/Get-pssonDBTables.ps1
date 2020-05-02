$tables = invoke-sqlcmd -server STORMBRINGER\SQLEXPRESS -Database msdb "select ss.name as schema_name, so.name as table_name, ss.name+'.'+so.name as full_name from sysobjects so inner join sys.schemas ss on ss.schema_id=so.uid where type='u' order by ss.name, so.name" 

$tables
use master
DECLARE @mydb nvarchar(50);
set @mydb = '$(restoreddb)';
if db_id(@mydb) is null
begin
declare @sqltext nvarchar(50);
set @sqltext = 'create database '+@mydb;
exec(@sqltext)
end
--SQL PARTITIONING
--lets create it
--Partition Function
 
 CREATE PARTITION FUNCTION PartitionByYear(Date)
 AS RANGE LEFT FOR VALUES ('2023-12-31', '2024-12-31', '2025-12-31')

 --Query Lists all existing Partition Function
 Select
	 name,
	 function_id,
	 type,
	 type_desc,
	 boundary_value_on_right
 FROM sys.partition_functions

 --CREATING FILEGROUPS
 ALTER DATABASE SalesDB ADD FILEGROUP FG_2023;
 ALTER DATABASE SalesDB ADD FILEGROUP FG_2024;
 ALTER DATABASE SalesDB ADD FILEGROUP FG_2025;
 ALTER DATABASE SalesDB ADD FILEGROUP FG_2026;

 ALTER DATABASE SalesDB REMOVE FILEGROUP FG_2023;

 -- --Query Lists all existing FILEGROUPS
 Select *
 From sys.filegroups
 where type='FG'

 --STEP 3: ADD .ndf files to each filegroup
 ALTER DATABASE SalesDB ADD FILE
 (
	NAME=P_2023, -- LOGICAL NAME
	FILENAME = 'C:\Program Files\Microsoft SQL Server\MSSQL17.SQLEXPRESS\MSSQL\DATA'
 )
--task for the format of Day Wed Jan Q1 2025 12:36:32 PM
select
	OrderID,CreationTime,
	'Day '+Format(CreationTime,'ddd MMM')+ ' Q'+ Datename(Quarter, CreationTime)+' '+  Format(CreationTime, 'yyyy HH:mm:ss tt')
from Sales.Orders
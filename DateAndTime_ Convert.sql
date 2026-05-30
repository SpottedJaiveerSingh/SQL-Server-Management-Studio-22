select 
	convert(int, '123') as [String to Int CONVERT ],
	convert(date, '12-12-2026') as [String to DATE CONVERT ];
select
	CreationTime,
	convert(date, CreationTime) as [DateTime to Date CONVERT ]
from Sales.Orders;
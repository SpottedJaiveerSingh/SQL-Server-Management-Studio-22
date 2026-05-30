select
	cast('123' as int),
	cast('01/02/2026' as Date),
	cast(123 as varchar),
	cast('01/02/2026' as datetime2);
select
	Cast(CreationTime as Date) Date
	from Sales.Orders;


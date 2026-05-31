select * from Sales.Customers;
--calculate the avg score of the customers
select
	avg(Score) [null-not-considered-Avg-Score],
	avg(Coalesce(Score,0)) [Average Score]
	from Sales.Customers;
select
	CustomerID,
	avg(Score) over () [null-not-considered-Avg-Score],
	avg(Coalesce(Score,0)) over () [Average Score]
	from Sales.Customers;

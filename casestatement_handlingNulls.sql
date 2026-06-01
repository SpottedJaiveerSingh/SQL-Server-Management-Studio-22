--using casestatements to handle nulls
--basically replace nulls with a specific values

/*Task: find avg score of customers and 
treat nulls as 0,
and provide details like customerID,lastname. */
--method prev
select
CustomerID,LastName,Score,
avg(isnull(Score,0)) over () as [Average Score]
from Sales.Customers;
--method case statement
select 
CustomerID, LastName, Score,
Avg(CASE
		when Score is null then 0
		else Score
	END )
		over () as AvgCleanScore
from Sales.Customers;
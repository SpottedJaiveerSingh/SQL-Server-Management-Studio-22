--aggregate functions - count()
--TASK: Find the total numbers of Customers, additionally provide all customer details:
Select 
	*,
	count(*) over () [Total numbers of Customers]
	from Sales.Customers;
--TASK: Find the total numbers of Scores for the Customers
Select 
	*,
	count(Score) over () [Total numbers of Customers]
	from Sales.Customers;

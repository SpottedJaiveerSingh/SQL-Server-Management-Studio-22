--CaseStatements
--for
--Conditional aggregation
/*How many times each customer has made an order with sales greater than 30*/
 select
 CustomerID,
 SUM(CASE
	WHEN Sales>30 THEN 1
	ELSE 0
 END) TotalOrdersWithScoreAbove30
 From Sales.Orders
 Group by CustomerID

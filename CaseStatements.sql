/*Create a report 
showing total sales for each of the following categories
High(over 50) medium(21-50) low(20 or less)
sort the categories from highest sales to the lowest*/
Select [Sales Category],
SUM(Sales) as TotalSales
FROM
	(Select 
		OrderID, Sales,
		Case
				When Sales>50 THEN 'High'
				When Sales>20THEN 'Medium'
				ELSE 'Low'
		End [Sales Category]
	From Sales.Orders)t
GROUP BY [Sales Category]
ORDER BY TotalSales DESC
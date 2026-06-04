 --Rank Customers based on their total Sales
 select CustomerID,
	Sum(Sales) TotalSales,
	Rank() over (Order by Sum(sales) DESC) Rank
from sales.Orders
group by CustomerID
--(Order by Sum(sales) DESC is also the part of group by: Sum(Sales) TotalSales,)
--Sum(Sales) is must for BOTH as per RULE.
--ntile(n)
Select 
OrderID,Sales,
ntile(2) OVER (ORDER BY Sales DESC) Ntile_
From Sales.Orders
--USE--CASES--OF--NTILE()-->
--DATA SEGMENTATION
--Segment all orders into three categories: high, medium and low sales 
Select *,
CASE Ntile_
	When 1 then 'High'
	When 2 then 'Medium'
	Else 'Low' END Category
From 
(Select 
OrderID,Sales,
ntile(3) OVER (ORDER BY Sales DESC) Ntile_
From Sales.Orders)t
--EQUALIZING LOADS
Select
ntile(2) OVER (ORDER BY OrderID) Bucket,
*
From Sales.Orders
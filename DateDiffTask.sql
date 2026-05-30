 --find average shipping duration in days for each month
 select 
 Month(OrderDate)[month],
 AVG(DateDiff(day, OrderDate, ShipDate)) [ avg shipping duration]
 from Sales.Orders
 group by month(OrderDate)
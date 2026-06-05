--Find the total sales across all orders
--And total sales for each product
--provid details sich as orderID and OrderDATE
Select 
orderID, orderDate,
sum(Sales) over () [Total Sales],
productID,
sum(Sales) over (Partition by ProductID) [Total sales for each product]
From Sales.Orders

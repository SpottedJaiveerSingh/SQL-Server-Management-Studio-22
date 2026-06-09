--Percentage based ranking functions
--FIND THE PRODUCTS THAT FALL WITHIN THE HIGHEST 40% of the PRICES
Select * from (
Select *,
cume_dist() over (Order by Price DESC) rank
from Sales.Products)t 
where rank<=.4




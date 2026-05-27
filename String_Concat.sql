select
	FirstName,
	Country,
	concat(FirstName,' ', Country) as Name_Country
from Sales.Customers
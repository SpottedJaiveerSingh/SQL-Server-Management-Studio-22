select
	Country,
    substring(Country,1,2) as SubString_
from Sales.Customers;
select
	substring(FirstName,1,2) as Firstname,
    substring(LastName,1,2) as Lastname
from Sales.Customers;

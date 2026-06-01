--CaseStamentmapping
--QUICK FORM
--Two rules must follow:
--1. a single column to be checked.
--2. equal operator   
Select
	CustomerID, FirstName, LastName,
	Case Country
		when 'Germany' then 'DE'
		when 'USA' then 'US'
	End [Abbr.Country],
	Score
From Sales.Customers;
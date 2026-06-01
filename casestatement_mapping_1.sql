--CaseStatement Mapping for the Countries as abbreviation
Select
	CustomerID, FirstName, LastName,
	Case 
		when Country='Germany' then 'de'
		when Country='USA' then 'us'
	End [Abbr.Country],
	Score
From Sales.Customers;
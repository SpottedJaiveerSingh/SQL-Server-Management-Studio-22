--tips for performance in SQL
--1. Select what is needed
SELECT * from Sales.Customers
SELECT CustomerID, FirstName, Country FROM Sales.Customers
--2. avoid not so needed DISTINCT and ORDER BY
--3. for exploration limit the rows
SELECT top 3 * from Sales.Customers
--4. create nonclustered index on frequently used columns in where clause
--5. avoid applying functions to column in where clause (func on columns can block index usage)



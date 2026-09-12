--tips for performance in SQL
--1. Select what is needed
SELECT * from Sales.Customers;
SELECT CustomerID, FirstName, Country FROM Sales.Customers;
--2. avoid not so needed DISTINCT and ORDER BY
--3. for exploration limit the rows
SELECT top 3 * from Sales.Customers;
--4. create nonclustered index on frequently used columns in where clause
--5. avoid applying functions to column in where clause (func on columns can block index usage)
--6. avoid leading wildcars as they prevert index usage
--7. use IN instead of multiple OR s 
--8. JOIN SPEEDs (use inner when possible)
--best to worst
--inner>left,right>>worst
--9. use explicit JOIN (ANSI join) instead of implicit join (NON ANSI join)-- which have written INNERJOIN etc
--10. Ensure that the columns used in ON clause are indexed.
--11. filter before joining (big tables)
--the thing to




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
--12. aggregate before joining
--13. use unions instead of ORs while joining table
--14. check for nested loops and use the SQL hints while necessary
--15. union all >>> union if duplicates accepted
--16. union all + distinct     if duplicates not accepted.
--17. use COLUMNSTORE INDEX for aggregations on large tables
--18. pre aggregate data and stroe it in new table for reporting
--19. joins = exists >> IN
--20. avoid redundant logic in your query
--21. avoid datatypes varchar and text
--22. avoid (MAX) uneccerasily large length in datatypes
--23. use the NOT NULL constraint where applicable
--24. ensure all your tables have clustered primary key
--25. create non clustered indexes for the foreign keys which are used frequently
--26. avoid over indexing.
--27. drop unused indexes
--28. update statistics weekly
--29. reorganixe an rebuild indexes weekly
--30. Partition large tables (facts) to improve performance







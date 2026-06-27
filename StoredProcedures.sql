
-- =================================================================================================
-- Step 1: Write a Query
-- =================================================================================================

-- For US Customers find the total num of customers and the average score
SELECT 
    COUNT(*) TotalCustomers,
    AVG(Score) AvgScore
FROM Sales.Customers
WHERE Sales.Customers.Country='USA';
GO -- Separates the query from the next batch

-- ================================================================================================
-- Step 2: Turning the Query into a stored procedure
-- =================================================================================================

CREATE PROCEDURE GetCustomerSummary AS 
BEGIN
    SELECT 
        COUNT(*) TotalCustomers,
        AVG(Score) AvgScore
    FROM Sales.Customers
    WHERE Sales.Customers.Country='USA'
END;
GO

-- =================================================================================================
-- Step 3: Execute the Stored Procedure
-- =================================================================================================

EXEC GetCustomerSummary;
GO

-- For German Customers find the total num of customers and average score
-- Define Stored procedure with parameter
ALTER PROCEDURE GetCustomerSummary 
    @Country NVARCHAR(50) = 'USA' 
AS 
BEGIN
    DECLARE @TotalCustomers INT, @AvgScore FLOAT;

    -- Prepare and clean data
    IF EXISTS(SELECT 1 FROM Sales.Customers WHERE Score IS NULL AND Country=@Country)
    BEGIN
        PRINT('Updating NULL Scores to 0 !')
        UPDATE Sales.Customers
        SET Score = 0
        WHERE Score IS NULL AND Country=@Country;
    END 
    ELSE
    BEGIN
        PRINT('No Null Scores Found')
    END;  

    -- Generate report
    SELECT 
        @TotalCustomers = COUNT(*),
        @AvgScore = AVG(Score) 
    FROM Sales.Customers
    WHERE Country = @Country;

    -- Print the output clearly
    PRINT 'Total Customers from ' + @Country + ': ' + CAST(@TotalCustomers AS VARCHAR);
    PRINT 'Average Score from ' + @Country + ': ' + CAST(@AvgScore AS VARCHAR);
END;
GO -- This GO finishes the ALTER PROCEDURE definition successfully!

-- =================================================================================================
-- Step 4: Now execute the updated procedure safely
-- =================================================================================================

EXEC GetCustomerSummary; 
EXEC GetCustomerSummary @Country = 'Germany';

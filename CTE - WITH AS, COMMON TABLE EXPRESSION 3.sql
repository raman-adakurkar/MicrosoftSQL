WITH 
S1 AS (
	SELECT YEAR(OrderDate) AS SalesYear, SalesOrderID, TotalDue
	FROM Sales.SalesOrderHeader
),
S2 AS (
	SELECT SalesYear, Count(SalesOrderID) AS TotalSales, SUM(TotalDue) AS AnnualSales
	FROM S1
	GROUP BY SalesYear
)

SELECT SalesYear, TotalSales, AnnualSales
FROM S2
WHERE TotalSales > 5000

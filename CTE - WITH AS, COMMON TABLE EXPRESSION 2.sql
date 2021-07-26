WITH SalesByYear
AS(
	SELECT YEAR(OrderDate) AS SalesYear, SUM(TotalDue) AS TotalSales
	FROM Sales.SalesOrderHeader
	GROUP BY YEAR(OrderDate)
)

SELECT 
	CurrentYearSales.SalesYear,
	CurrentYearSales.TotalSales,
	PriorYearSales.TotalSales AS PriorYearSales
FROM SalesByYear CurrentYearSales
LEFT OUTER JOIN SalesByYear AS PriorYearSales
ON CurrentYearSales.SalesYear - 1 = PriorYearSales.SalesYear
ORDER BY 1
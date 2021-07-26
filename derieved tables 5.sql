SELECT SalesByYear.SalesYear, SalesByYear.TotalRevenue, COALESCE(HireByYear.NewHireCount, 0)
FROM(
	SELECT SalesYear, SUM(TotalDue) AS TotalRevenue
	FROM (
		SELECT YEAR(OrderDate) AS SalesYear, TotalDue
		FROM Sales.SalesOrderHeader
		) AS SalesDetails
	GROUP BY SalesYear
	) AS SalesByYear
LEFT OUTER JOIN (
	SELECT HireYear, COUNT(BusinessEntityID) AS NewHireCount
	FROM(
		SELECT YEAR(HireDate) AS HireYear, BusinessEntityID
		FROM HumanResources.Employee
		) AS HireDetails
	GROUP BY HireYear
) AS HireByYear
ON HireByYear.HireYear = SalesByYear.SalesYear
ORDER BY 1
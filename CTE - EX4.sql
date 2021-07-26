WITH MonthSales
AS(
	SELECT MONTH(OrderDate) AS MonthOrder, TotalDue
	FROM Sales.SalesOrderHeader
	WHERE YEAR(OrderDate) = 2006
)

SELECT MonthOrder, SUM(TotalDue) AS MonthlySales
FROM MonthSales
GROUP BY MonthOrder
ORDER BY 1
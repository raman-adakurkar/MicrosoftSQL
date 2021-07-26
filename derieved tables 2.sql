SELECT YEAR(OrderDate), COUNT(*) AS SalesCount
FROM Sales.SalesOrderHeader
WHERE YEAR(OrderDate) = '2006'
GROUP BY YEAR(OrderDate)

SELECT Orderdate, COUNT(*) AS SalesCount
FROM(
	SELECT YEAR(OrderDate) AS OrderDate
	FROM Sales.SalesOrderHeader
	) AS SalesOrderDateCount
Where OrderDate = '2006'
GROUP BY OrderDate

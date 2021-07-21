SELECT SalesPersonID, TotalDue
FROM Sales.SalesOrderHeader
WHERE 
	SalesPersonID IS NOT NULL
	AND
	TotalDue > 70000
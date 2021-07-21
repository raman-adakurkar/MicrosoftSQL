SELECT FirstName, LastName
FROM Sales.vIndividualCustomer
WHERE 
	LastName IN ('LOPEZ', 'MARTIN', 'WOOD')
	AND
	FirstName BETWEEN 'C' AND 'L'
	
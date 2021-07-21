SELECT TOP 5 FirstName, LastName
FROM Sales.vIndividualCustomer
WHERE LastName = 'R%'

SELECT TOP 5 FirstName, LastName
FROM Sales.vIndividualCustomer
WHERE LastName = '%R'

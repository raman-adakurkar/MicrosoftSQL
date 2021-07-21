SELECT 
	FirstName, 
	LastName,
	EmailAddress
FROM 
	Person.Person P

INNER JOIN Person.Password PP
ON P.BusinessEntityID = PP.BusinessEntityID

INNER JOIN Person.EmailAddress PE
ON P.BusinessEntityID = PE.BusinessEntityID


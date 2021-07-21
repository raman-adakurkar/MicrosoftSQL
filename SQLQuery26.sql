SELECT FirstName, LastName, PasswordHash
FROM Person.Person P
INNER JOIN Person.Password PP
ON P.BusinessEntityID = PP.BusinessEntityID

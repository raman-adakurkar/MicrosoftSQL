SELECT *
FROM (
	SELECT TOP 10 BusinessEntityID, FirstName, LastName
	FROM Person.Person
	) AS PersonName
SELECT
	FirstName, COALESCE(MiddleName, ''), LastName
FROM Person.Person
SELECT FirstName AS FN, LastName AS LN,
	CASE
		WHEN LastName = 'Abercrombie' THEN 'NONE'
		ELSE 'Exists'
	END AS CaseName
FROM Person.Person

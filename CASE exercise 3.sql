SELECT 
	FirstName, 
	CASE
		WHEN LEN(FirstName) > 10 THEN 'Long Name'
		WHEN LEN(FirstName) < 10 THEN 'Short Name'
	END AS LengthOfFirstName,
	LastName,
	CASE
		WHEN LEN(LastName) > 10 THEN 'Long Name'
		WHEN LEN(LastName) < 10 THEN 'Short Name'
	END AS LengthOfLastName
FROM Person.Person
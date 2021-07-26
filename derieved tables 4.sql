SELECT *
FROM (
	SELECT 
		BusinessEntityID, 
		NationalIDNumber, 
		BIRTH_YEAR, 
		YEAR(HireDate) AS HIRE_YEAR
	FROM (
		SELECT 
			BusinessEntityID, 
			NationalIDNumber, 
			YEAR(BirthDate) AS BIRTH_YEAR, 
			HireDate
		FROM HumanResources.Employee
		) AS INNERNESTEDTABLE
	WHERE BIRTH_YEAR < 1950
	) AS OUTERNESTEDTABLE
WHERE HIRE_YEAR > 2003
SELECT *
FROM(
	SELECT HireYear, BirthYear
	FROM(
		SELECT HireYear, YEAR(BirthDate) AS BirthYear
		FROM (
			SELECT YEAR(HireDate) AS HireYear, BirthDate
			FROM HumanResources.Employee
			) AS HIRE_DETAILS
		) AS BIRTH_DETAILS
	WHERE HireYear = 2006 AND BirthYear < 1968
	) AS EMPLOYEE_DETAILS
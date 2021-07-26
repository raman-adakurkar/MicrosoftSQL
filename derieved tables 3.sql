SELECT *
FROM (
	SELECT 
		BusinessEntityID,
		NationalIDNumber,
		YEAR(BirthDate) AS BIRTHYEAR,
		YEAR(HireDate) AS HIREYEAR
	FROM HumanResources.Employee
	) AS HR_EMPLOYEE
WHERE BIRTHYEAR < 1950 AND HIREYEAR >= 2004
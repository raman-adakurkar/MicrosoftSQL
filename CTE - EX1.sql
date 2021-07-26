WITH T1
AS (
	SELECT YEAR(HireDate) AS HireYear, BusinessEntityID
	FROM HumanResources.Employee
),

T2 AS (
	SELECT HireYear, COUNT(BusinessEntityID) AS TotalEmployeesHired
	FROM T1
	GROUP BY HireYear
)

SELECT CurrentYear.HireYear, CurrentYear.TotalEmployeesHired, pyhired.TotalEmployeesHired AS pyhired
FROM T2 CurrentYear
LEFT OUTER JOIN T2 AS pyhired
ON CurrentYear.HireYear - 1 = pyhired.HireYear
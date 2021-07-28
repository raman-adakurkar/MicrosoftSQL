WITH SameID 
AS(
	SELECT HRE.BusinessEntityID AS BI, JobTitle,
		CASE 
			WHEN Gender = 'M' THEN 'Male'
			ELSE 'Female'
		END AS GenderValue
	FROM HumanResources.Employee HRE
)

SELECT TOP 500 SI.BI, JobTitle, GenderValue
FROM SameID SI
LEFT OUTER JOIN Person.Person PP
ON SI.BI = PP.BusinessEntityID
ORDER BY (
	CASE
		WHEN GenderValue = 'Male' THEN 1
		WHEN GenderValue = 'Female' THEN 2
	END
)
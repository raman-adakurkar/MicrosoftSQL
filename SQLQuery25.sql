SELECT 
	Name,
	AnnualSales,
	YearOpened,
	SquareFeet AS [STORE SIZE],
	NumberEmployees AS [TOTAL EMPLOYEES]

FROM 
	Sales.vStoreWithDemographics

WHERE 
	AnnualSales >= 45

ORDER BY 
	[STORE SIZE] DESC, 
	[TOTAL EMPLOYEES] DESC


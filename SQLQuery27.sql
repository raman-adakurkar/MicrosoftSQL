SELECT 
	E.BusinessEntityID, 
	E.NationalIDNumber, 
	E.JobTitle,
	EDH.DepartmentID,
	EDH.StartDate,
	EDH.EndDate
FROM 
	HumanResources.Employee E
INNER JOIN HumanResources.EmployeeDepartmentHistory EDH
ON E.BusinessEntityID = EDH.BusinessEntityID
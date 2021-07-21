SELECT FirstName, JobTitle, Department
FROM HumanResources.vEmployeeDepartment
WHERE 
	Department IN ('EXECUTIVE', 'TOOL DESIGN', 'ENGINEERING')

INSERT INTO RamanTest
SELECT TOP 10 
	FirstName + ' ' + LastName, 
	BusinessEntityID, 
	GETDATE(), 
	PhoneNumber
FROM HumanResources.vEmployee

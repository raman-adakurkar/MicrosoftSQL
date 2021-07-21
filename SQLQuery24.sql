SELECT FirstName, LastName, CountryRegionName
FROM Sales.vIndividualCustomer
WHERE CountryRegionName IN ('UNITED STATES', 'FRANCE')
ORDER BY 3
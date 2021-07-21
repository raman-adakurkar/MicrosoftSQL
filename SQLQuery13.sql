SELECT *
FROM Sales.vIndividualCustomer
WHERE
	CountryRegionName = 'AUSTRALIA'
	OR
	(PhoneNumberType = 'CELL'
	AND
	EmailPromotion = 0)
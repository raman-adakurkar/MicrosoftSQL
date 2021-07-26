SELECT 
	BillToAddressID, ShipToAddressID,
	NULLIF(BillToAddressID, ShipToAddressID),
	COALESCE(NULLIF(BillToAddressID, ShipToAddressID), 1)
FROM Sales.SalesOrderHeader
SELECT 
	MakeFlag,
	FinishedGoodsFlag,
	NULLIF(MakeFlag, FinishedGoodsFlag)
FROM Production.Product
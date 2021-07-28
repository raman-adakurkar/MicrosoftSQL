SELECT 
	FirstName, 
	LastName,
	CASE
		WHEN EmailPromotion = 0 THEN 'Promotion 1'
		WHEN EmailPromotion = 1 THEN 'Promotion 2'
		WHEN EmailPromotion = 2 THEN 'Promotion 3'
	END AS PromotionStatus
FROM Person.Person
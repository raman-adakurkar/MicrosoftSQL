SELECT GETDATE(), 
	CAST(GETDATE() AS DATE) AS USING_CAST,
	CONVERT(DATE, GETDATE()) AS USING_CONVERT
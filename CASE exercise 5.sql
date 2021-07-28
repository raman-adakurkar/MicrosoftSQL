SELECT TOP 10
	Name,
	CASE
		WHEN Color IS NULL THEN 'No Color'
		ELSE Color
	END AS ISCOLOR
FROM Production.Product

SELECT TOP 10
	Name,
	COALESCE(Color, 'No Color') AS ISCOLOR
FROM Production.Product
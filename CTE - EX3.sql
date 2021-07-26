WITH Total_Sales
AS (
	SELECT YEAR(SellStartDate) AS SaleYear, ProductID
	FROM Production.Product
),
Sales AS (
	SELECT SaleYear, COUNT(ProductID) AS TotalSales
	FROM Total_Sales
	GROUP BY SaleYear
)


SELECT SaleYear, TotalSales
FROM SALES


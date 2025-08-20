WITH MonthlySales AS (
    SELECT DATE_FORMAT(SaleDate, '%Y-%m') AS Month,
           SUM(Quantity * Price) AS TotalSales
    FROM Sales
    GROUP BY DATE_FORMAT(SaleDate, '%Y-%m')
)
SELECT * FROM MonthlySales ORDER BY Month;

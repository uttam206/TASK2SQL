SELECT Region, ProductID,
       SUM(Quantity * Price) AS TotalSales,
       RANK() OVER (PARTITION BY Region ORDER BY SUM(Quantity * Price) DESC) AS RankInRegion
FROM Sales
GROUP BY Region, ProductID;

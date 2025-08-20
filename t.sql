SELECT CustomerID, SUM(Quantity * Price) AS TotalSpent
FROM Sales
GROUP BY CustomerID
ORDER BY TotalSpent DESC
LIMIT 3;

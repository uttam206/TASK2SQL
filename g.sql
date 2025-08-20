SELECT CustomerID, SUM(Quantity * Price) AS TotalSpent
FROM Sales
GROUP BY CustomerID
HAVING TotalSpent > (
    SELECT AVG(Quantity * Price)
    FROM Sales
);

SELECT
    Region,
    AVG(Discount) AS Average_Discount,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit,
    CAST(
        SUM(Profit) * 100.0 / SUM(Sales)
        AS DECIMAL(10,2)
    ) AS Profit_Margin
FROM dbo.Superstore
GROUP BY Region
ORDER BY Average_Discount DESC;
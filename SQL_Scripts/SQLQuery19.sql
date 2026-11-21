SELECT
    Sub_Category,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit,
    SUM(Quantity) AS Units_Sold,
    CAST(
        SUM(Profit) * 100.0 / SUM(Sales)
        AS DECIMAL(10,2)
    ) AS Profit_Margin
FROM dbo.Superstore
GROUP BY Sub_Category
ORDER BY Total_Profit ASC;
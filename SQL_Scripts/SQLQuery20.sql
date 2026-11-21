SELECT
    Sub_Category,
    COUNT(*) AS Order_Lines,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit,
    AVG(Discount) AS Average_Discount,
    CAST(
        SUM(Profit) * 100.0 / SUM(Sales)
        AS DECIMAL(10,2)
    ) AS Profit_Margin
FROM dbo.Superstore
GROUP BY Sub_Category
ORDER BY Average_Discount DESC;
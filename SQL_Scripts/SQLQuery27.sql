SELECT
    Ship_Mode,
    COUNT(DISTINCT Order_ID) AS Total_Orders,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit,
    AVG(DATEDIFF(DAY, Order_Date, Ship_Date)) AS Average_Shipping_Days,
    CAST(
        SUM(Profit) * 100.0 / SUM(Sales)
        AS DECIMAL(10,2)
    ) AS Profit_Margin
FROM dbo.Superstore
GROUP BY Ship_Mode
ORDER BY Total_Orders DESC;
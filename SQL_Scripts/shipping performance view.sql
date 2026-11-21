CREATE OR ALTER VIEW dbo.vw_Shipping_Performance
AS
SELECT
    Ship_Mode,
    COUNT(DISTINCT Order_ID) AS Total_Orders,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit,
    CAST(
        AVG(CAST(DATEDIFF(DAY, Order_Date, Ship_Date) AS DECIMAL(10,2)))
        AS DECIMAL(10,2)
    ) AS Avg_Order_To_Ship_Days,
    CAST(
        SUM(Profit) * 100.0 / SUM(Sales)
        AS DECIMAL(10,2)
    ) AS Profit_Margin_Percentage
FROM dbo.Superstore
GROUP BY Ship_Mode;
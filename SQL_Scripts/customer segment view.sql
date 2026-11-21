CREATE OR ALTER VIEW dbo.vw_Segment_Performance
AS
SELECT
    Segment,
    COUNT(DISTINCT Customer_ID) AS Total_Customers,
    COUNT(DISTINCT Order_ID) AS Total_Orders,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit,
    CAST(
        SUM(Profit) * 100.0 / SUM(Sales)
        AS DECIMAL(10,2)
    ) AS Profit_Margin_Percentage
FROM dbo.Superstore
GROUP BY Segment;
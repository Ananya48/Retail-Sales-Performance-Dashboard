USE RetailSalesDB;

SELECT
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit,
    COUNT(DISTINCT Order_ID) AS Total_Orders,
    COUNT(DISTINCT Customer_ID) AS Total_Customers,
    CAST(
        SUM(Sales) / COUNT(DISTINCT Order_ID)
        AS DECIMAL(12,2)
    ) AS Average_Order_Value,
    CAST(
        SUM(Profit) * 100.0 / SUM(Sales)
        AS DECIMAL(10,2)
    ) AS Profit_Margin_Percentage
FROM dbo.Superstore;
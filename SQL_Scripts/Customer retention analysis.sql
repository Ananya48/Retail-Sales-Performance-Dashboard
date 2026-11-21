CREATE OR ALTER VIEW dbo.vw_Customer_Retention
AS
WITH CustomerOrders AS
(
    SELECT
        Customer_ID,
        COUNT(DISTINCT Order_ID) AS Total_Orders,
        SUM(Sales) AS Total_Sales,
        SUM(Profit) AS Total_Profit
    FROM dbo.Superstore
    GROUP BY Customer_ID
)
SELECT
    CASE
        WHEN Total_Orders > 1 THEN 'Repeat Customer'
        ELSE 'One-time Customer'
    END AS Customer_Type,
    COUNT(*) AS Total_Customers,
    SUM(Total_Orders) AS Total_Orders,
    SUM(Total_Sales) AS Total_Sales,
    SUM(Total_Profit) AS Total_Profit
FROM CustomerOrders
GROUP BY
    CASE
        WHEN Total_Orders > 1 THEN 'Repeat Customer'
        ELSE 'One-time Customer'
    END;
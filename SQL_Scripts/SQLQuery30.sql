WITH CustomerOrders AS
(
    SELECT
        Customer_ID,
        COUNT(DISTINCT Order_ID) AS Order_Count,
        SUM(Sales) AS Total_Sales,
        SUM(Profit) AS Total_Profit
    FROM dbo.Superstore
    GROUP BY Customer_ID
)
SELECT
    CASE
        WHEN Order_Count = 1 THEN 'One-time Customer'
        ELSE 'Repeat Customer'
    END AS Customer_Type,
    COUNT(*) AS Number_of_Customers,
    SUM(Order_Count) AS Total_Orders,
    SUM(Total_Sales) AS Total_Sales,
    SUM(Total_Profit) AS Total_Profit
FROM CustomerOrders
GROUP BY
    CASE
        WHEN Order_Count = 1 THEN 'One-time Customer'
        ELSE 'Repeat Customer'
    END;
SELECT TOP 10
    Customer_ID,
    Customer_Name,
    COUNT(DISTINCT Order_ID) AS Total_Orders,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit
FROM dbo.Superstore
GROUP BY
    Customer_ID,
    Customer_Name
ORDER BY Total_Sales DESC;
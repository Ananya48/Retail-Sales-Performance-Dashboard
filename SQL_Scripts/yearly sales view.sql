CREATE OR ALTER VIEW dbo.vw_Yearly_Sales
AS
WITH YearlyData AS
(
    SELECT
        YEAR(Order_Date) AS Sales_Year,
        SUM(Sales) AS Total_Sales,
        SUM(Profit) AS Total_Profit,
        COUNT(DISTINCT Order_ID) AS Total_Orders,
        COUNT(DISTINCT Customer_ID) AS Total_Customers
    FROM dbo.Superstore
    GROUP BY YEAR(Order_Date)
)
SELECT
    Sales_Year,
    Total_Sales,
    Total_Profit,
    Total_Orders,
    Total_Customers,
    LAG(Total_Sales) OVER (ORDER BY Sales_Year) AS Previous_Year_Sales,
    CAST(
        (Total_Sales - LAG(Total_Sales) OVER (ORDER BY Sales_Year))
        * 100.0 /
        NULLIF(LAG(Total_Sales) OVER (ORDER BY Sales_Year), 0)
        AS DECIMAL(10,2)
    ) AS YoY_Growth_Percentage
FROM YearlyData;
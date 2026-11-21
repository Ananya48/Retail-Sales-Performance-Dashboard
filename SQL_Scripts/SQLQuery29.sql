SELECT
    Order_ID,
    Order_Date,
    Category,
    Sub_Category,
    Product_Name,
    Sales,
    Quantity,
    Discount,
    Profit
FROM dbo.Superstore
WHERE Customer_ID = 'SM-20320'
ORDER BY Order_Date;
SELECT
    Sub_Category,
    CASE
        WHEN Discount = 0 THEN '0% discount'
        WHEN Discount <= 0.10 THEN '1-10% discount'
        WHEN Discount <= 0.20 THEN '11-20% discount'
        WHEN Discount <= 0.30 THEN '21-30% discount'
        ELSE 'Above 30% discount'
    END AS Discount_Range,
    COUNT(*) AS Order_Lines,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit,
    CAST(
        SUM(Profit) * 100.0 / SUM(Sales)
        AS DECIMAL(10,2)
    ) AS Profit_Margin
FROM dbo.Superstore
WHERE Sub_Category IN ('Tables', 'Bookcases')
GROUP BY
    Sub_Category,
    CASE
        WHEN Discount = 0 THEN '0% discount'
        WHEN Discount <= 0.10 THEN '1-10% discount'
        WHEN Discount <= 0.20 THEN '11-20% discount'
        WHEN Discount <= 0.30 THEN '21-30% discount'
        ELSE 'Above 30% discount'
    END
ORDER BY Sub_Category, Discount_Range;
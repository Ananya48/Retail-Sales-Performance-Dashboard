SELECT
    SUM(CASE WHEN Order_ID IS NULL THEN 1 ELSE 0 END) AS MissingOrderID,
    SUM(CASE WHEN Customer_ID IS NULL THEN 1 ELSE 0 END) AS MissingCustomerID,
    SUM(CASE WHEN Product_ID IS NULL THEN 1 ELSE 0 END) AS MissingProductID,
    SUM(CASE WHEN Sales IS NULL THEN 1 ELSE 0 END) AS MissingSales,
    SUM(CASE WHEN Profit IS NULL THEN 1 ELSE 0 END) AS MissingProfit,
    SUM(CASE WHEN Postal_Code IS NULL THEN 1 ELSE 0 END) AS MissingPostalCode
FROM dbo.Superstore;
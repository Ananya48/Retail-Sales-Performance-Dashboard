SELECT
    COUNT(*) AS TotalRecords,
    SUM(CASE WHEN Profit IS NULL THEN 1 ELSE 0 END) AS MissingProfit,
    SUM(CASE WHEN Sales IS NULL THEN 1 ELSE 0 END) AS MissingSales,
    SUM(CASE WHEN Order_Date IS NULL THEN 1 ELSE 0 END) AS MissingOrderDate,
    SUM(CASE WHEN Ship_Date IS NULL THEN 1 ELSE 0 END) AS MissingShipDate
FROM dbo.Superstore;
SELECT
    COUNT(*) AS TotalRecords,
    COUNT(Profit) AS AvailableProfitRecords,
    COUNT(*) - COUNT(Profit) AS MissingProfitRecords
FROM dbo.Superstore;
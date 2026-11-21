SELECT
    Row_ID,
    COUNT(*) AS DuplicateCount
FROM dbo.Superstore
GROUP BY Row_ID
HAVING COUNT(*) > 1;
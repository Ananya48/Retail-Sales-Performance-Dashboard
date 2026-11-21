SELECT *
FROM dbo.Superstore
WHERE
    Sales <= 0
    OR Quantity <= 0
    OR Discount < 0
    OR Discount > 1;
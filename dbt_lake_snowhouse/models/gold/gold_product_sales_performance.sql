SELECT
    Category,
    COUNT(*) AS ProductCount,
    AVG(Price) AS AveragePrice,
    AVG(Margin) AS AverageMargin
FROM {{ ref('silver_products') }}
GROUP BY Category

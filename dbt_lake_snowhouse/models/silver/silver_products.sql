SELECT
    ProductID,
    ProductName,
    Category,
    Price,
    Price * 0.8 AS Cost, 
    Price - (Price * 0.8) AS Margin
FROM {{ ref('bronze_products') }}
WHERE ProductID > (SELECT MAX(ProductID) FROM {{ this }})


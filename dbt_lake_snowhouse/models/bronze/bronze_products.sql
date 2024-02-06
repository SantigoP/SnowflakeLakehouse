SELECT
    ProductID,
    LOWER(ProductName) AS ProductName,
    Category,
    Price
FROM {{ ref('stg_products') }}

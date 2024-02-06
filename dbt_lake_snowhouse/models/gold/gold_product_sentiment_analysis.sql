SELECT
    p.Category,
    AVG(r.Rating) AS AverageRating,
    COUNT(*) AS NumberOfReviews
FROM {{ ref('silver_reviews') }} AS r
JOIN {{ ref('bronze_products') }} AS p ON r.ProductID = p.ProductID
GROUP BY p.Category

SELECT
    r.ReviewID,
    r.UserID,
    r.ProductID,
    r.Timestamp,
    r.Rating,
    r.ReviewText,
    DATEDIFF(day,current_date, r.Timestamp) AS DaysSinceReview
FROM {{ ref('bronze_reviews') }} AS r
LEFT JOIN {{ ref('stg_users') }} AS u ON r.UserID = u.UserID
LEFT JOIN {{ ref('stg_products') }} AS p ON r.ProductID = p.ProductID
WHERE r.Timestamp > (SELECT MAX(Timestamp) FROM {{ this }})

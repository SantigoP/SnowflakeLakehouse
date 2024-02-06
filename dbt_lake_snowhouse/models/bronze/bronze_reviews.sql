SELECT
    ReviewID,
    UserID,
    ProductID,
    Timestamp,
    Rating,
    ReviewText
FROM {{ ref('stg_reviews') }}
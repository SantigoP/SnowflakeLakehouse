SELECT
    UserID,
    LOWER(UserName) AS UserName,
    Location,
    TO_DATE(JoinDate, 'YYYY-MM-DD') AS JoinDate
FROM {{ ref('stg_users') }}
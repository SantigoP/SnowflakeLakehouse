SELECT
    UserID,
    LOWER(UserName) AS UserName,
    Location,
    TO_CHAR(JoinDate, 'YYYY-MM-DD') AS JoinDate
FROM {{ ref('stg_users') }}
SELECT
    Location,
    COUNT(*) AS UserCount,
    AVG(DaysSinceJoining) AS AverageDaysSinceJoining
FROM {{ ref('silver_users') }}
GROUP BY Location

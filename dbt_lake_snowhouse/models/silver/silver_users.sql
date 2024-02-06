SELECT
    UserID,
    UserName,
    Location,
    JoinDate,
    DATEDIFF(day, current_date, JoinDate) AS DaysSinceJoining
FROM {{ ref('bronze_users') }}
WHERE JoinDate > (SELECT MAX(JoinDate) FROM {{ this }})

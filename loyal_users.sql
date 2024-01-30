# Loyal User Reward- identify 5 oldest users

USE ig_clone;

SELECT 
    *
FROM
    users
ORDER BY created_at
LIMIT 5;
# Bots & fake accounts

SELECT users.username, count(likes.photo_id) AS bots_fakes
FROM users
INNER JOIN likes ON
users.id = likes.user_id
GROUP BY users.username
HAVING bots_fakes = (SELECT COUNT(*) FROM photos)  #scalar subquery
ORDER BY username;
# Inactive user engagement

SELECT 
	users.id, username, photos.id, user_id 
FROM users
LEFT JOIN photos ON
	users.id = photos.user_id
WHERE
	photos.id IS NULL; 

#Contest winner declaration - most likes on a photo

SELECT 
	likes.photo_id, COUNT(username) AS num_of_likes, users.id, username, image_url
FROM photos
INNER JOIN likes ON
	photos.id = likes.photo_id
INNER JOIN users ON
	photos.user_id = users.id
GROUP BY likes.photo_id
ORDER BY num_of_likes DESC
LIMIT 1
;
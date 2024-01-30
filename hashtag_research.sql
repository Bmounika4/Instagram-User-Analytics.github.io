# Hashtags Research
use ig_clone; 

SELECT 
	tags.id, COUNT(tag_name), tag_name
FROM tags
INNER JOIN photo_tags ON
	tags.id = photo_tags.tag_id
GROUP BY tags.id
ORDER BY COUNT(tag_name) DESC
LIMIT 5;

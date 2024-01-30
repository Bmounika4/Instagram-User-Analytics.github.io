# User Engagement- avg number of posts per users

SELECT
(SELECT COUNT(id) FROM photos) / (SELECT COUNT(id) FROM users) as avg_engagement;

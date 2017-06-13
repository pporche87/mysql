-- Find users who have liked every single photo on the site 
SELECT
	username,
	COUNT(*) AS num_likes
FROM users
JOIN likes
	ON users.id=likes.user_id
GROUP BY users.id
HAVING num_likes =
	(SELECT COUNT(*) FROM photos);

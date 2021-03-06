-- Most likes on single photo 
SELECT
	username,
	photos.id,
	photos.image_url,
	COUNT(*) AS total
FROM photos
JOIN likes
	ON likes.photo_id=photos.id
JOIN users
	ON photos.user_id=users.id
GROUP BY photos.id
ORDER BY total DESC
LIMIT 1;

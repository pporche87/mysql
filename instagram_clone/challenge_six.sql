-- What are the top 5 most commonly used hashtags 
SELECT
	tags.tag_name,
	COUNT(*) AS total
FROM photo_tags
JOIN tags
	ON photo_tags.tag_id=tags.id
GROUP BY tags.id
ORDER BY total DESC
LIMIT 5;

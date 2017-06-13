-- What day of the week do most users register
SELECT
	DAYNAME(created_at) AS day,
	COUNT(*) AS total
FROM users
GROUP BY day
ORDER BY total DESC
LIMIT 2;

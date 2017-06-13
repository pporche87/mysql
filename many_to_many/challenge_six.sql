SELECT
 	first_name,
	last_name,
	COUNT(rating) AS COUNT,
	IFNULL(MIN(rating),0) AS MIN,
	IFNULL(MAX(rating),0) AS MAX,
	IFNULL(AVG(rating),0) AS AVERAGE,
	CASE
		WHEN COUNT(rating) >= 1 THEN 'ACTIVE'
		ELSE 'INACTIVE'
	END AS STATUS
FROM reviewers
LEFT JOIN reviews
	ON reviewers.id=reviews.reviewer_id
GROUP BY reviewers.id;

SELECT
 	first_name,
	last_name,
	COUNT(rating) AS COUNT,
	IFNULL(MIN(rating),0) AS MIN,
	IFNULL(MAX(rating),0) AS MAX,
	ROUND(IFNULL(AVG(rating),0),2) AS AVERAGE,
	IF(COUNT(rating) >= 1, 'ACTIVE', 'INACTIVE') AS STATUS
FROM reviewers
LEFT JOIN reviews
	ON reviewers.id=reviews.reviewer_id
GROUP BY reviewers.id;

SELECT
 	first_name,
	last_name,
	COUNT(rating) AS COUNT,
	IFNULL(MIN(rating),0) AS MIN,
	IFNULL(MAX(rating),0) AS MAX,
	ROUND(IFNULL(AVG(rating),0),2) AS AVERAGE,
	CASE
		WHEN COUNT(rating) >= 10 THEN 'POWER USER'
		WHEN COUNT(rating) > 0 THEN 'ACTIVE'
		ELSE 'INACTIVE'
	END AS STATUS
FROM reviewers
LEFT JOIN reviews
	ON reviewers.id=reviews.reviewer_id
GROUP BY reviewers.id;

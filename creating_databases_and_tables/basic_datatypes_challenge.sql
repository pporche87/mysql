CREATE TABLE tweets
	(
		username VARCHAR(15),
		tweetContent VARCHAR(140),
		favorites INT
	);

INSERT INTO tweets
	(username, tweetContent, favorites) VALUES
	('pporche87', 'tweetContent', 4)
	WHERE username = 'pporche87'

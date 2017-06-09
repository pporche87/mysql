SELECT NOW();

SELECT CURTIME();

SELECT DATE_FORMAT(NOW(), '%w');

SELECT DATE_FORMAT(NOW(), '%W');

SELECT DATE_FORMAT(NOW(), '%m/%d/%Y');

SELECT DATE_FORMAT(NOW(), '%M %D at %h:%i');

-- CREATE TABLE tweets (
-- 	content VARCHAR(140),
-- 	username VARCHAR(20),
-- 	created_at TIMESTAMP DEFAULT NOW()
-- );

INSERT INTO tweets (content, username)
VALUES ('this is my first tweet', 'pporche87');

INSERT INTO tweets (content, username)
VALUES ('this is my second tweet', 'pporche87');

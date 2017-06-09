-- CREATE TABLE comments (
-- 	content VARCHAR(100),
-- 	created_at TIMESTAMP DEFAULT NOW()
-- );

-- INSERT INTO comments (content)
-- VALUES('lol what a funny article');
--
-- INSERT INTO comments (content)
-- VALUES('i found this offensive');

CREATE TABLE comments2 (
	content VARCHAR(100),
	changed_at TIMESTAMP DEFAULT NOW() ON UPDATE CURRENT_TIMESTAMP
);

-- INSERT INTO comments2 (content)
-- VALUES('lol what a funny article');
--
-- INSERT INTO comments2 (content)
-- VALUES('i found this offensive');

UPDATE comments2 SET content='THIS IS NOT GIBBS'
WHERE content='i found this offensive';

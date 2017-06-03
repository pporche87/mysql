CREATE TABLE cats3
(
	name VARCHAR(100) DEFAULT 'unamed',
	age INT DEFAULT 99
);

DESC cats3;

INSERT INTO cats3 (name) VALUES ('Puppy');

CREATE TABLE cats4
(
	name VARCHAR(100) NOT NULL DEFAULT 'unamed',
	age INT NOT NULL DEFAULT 99
);

INSERT INTO cats4 (name, age) VALUES (NULL, 3);

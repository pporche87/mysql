CREATE TABLE people
(
	first_name VARCHAR(20),
	last_name VARCHAR(20),
	age INT
);

INSERT INTO people(first_name, last_name, age)
VALUES ('Tina', 'Belcher', 13);

SELECT * FROM people;

INSERT INTO people(first_name, last_name, age)
VALUES ('Bob', 'Belcher', 42);

SELECT * FROM people;

INSERT INTO people(first_name, last_name, age)
VALUES ('Linda', 'Belcher', 45),
			 ('Phillip', 'Frond', 38),
			 ('Calvin', 'Fischoeder', 70);

SELECT * FROM people;

DROP TABLE people;

SHOW TABLES; 

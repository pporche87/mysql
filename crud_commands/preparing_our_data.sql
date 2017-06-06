DROP TABLE cats;

CREATE TABLE cats
	(
		cat_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
		name VARCHAR(100),
		breed VARCHAR(100),
		age INT
	);

INSERT INTO cats (name, breed, age)
VALUES 			('Ringo', 'Tabby', 4),
 						('Cindy', 'Main Coon', 10),
 						('Dumbledore', 'Main Coon', 11),
 						('Egg', 'Persian', 4),
 						('Misty', 'Tabby', 13),
 						('George Michael', 'Ragdoll', 9),
 						('Jackson', 'Sphynx', 7);

SELECT * FROM cats; 

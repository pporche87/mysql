CREATE TABLE unique_cats (cat_id INT NOT NULL,
													name VARCHAR(100),
													age INT,
													PRIMARY KEY (cat_id));

INSERT INTO unique_cats(cat_id, name, age) VALUES (1, 'Fred', 23);

SELECT * FROM unique_cats;

INSERT INTO unique_cats(cat_id, name, age) VALUES (2, 'Louise', 3);

SELECT * FROM unique_cats;

INSERT INTO unique_cats(cat_id, name, age) VALUES (1, 'James', 3);

SELECT * FROM unique_cats;

CREATE TABLE unique_cats2 (cat_id INT NOT NULL AUTO_INCREMENT,
													name VARCHAR(100),
													age INT,
													PRIMARY KEY (cat_id));

INSERT INTO unique_cats2(name, age) VALUES ('Skippy', 4);

SELECT * FROM unique_cats2;

INSERT INTO unique_cats2(name, age) VALUES ('Jiff', 4);

SELECT * FROM unique_cats2;

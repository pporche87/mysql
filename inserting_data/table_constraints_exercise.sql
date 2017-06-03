CREATE TABLE employees (employee_id INT NOT NULL AUTO_INCREMENT,
												last_name VARCHAR(20) NOT NULL,
												first_name VARCHAR(20) NOT NULL,
												middle_name VARCHAR(20),
												age INT NOT NULL,
												current_status VARCHAR(20) NOT NULL DEFAULT 'employed',
												PRIMARY KEY (employee_id));

-- Multi-Column Data Add (Primary Key Check)
INSERT INTO employees (last_name, first_name, middle_name, age, current_status)
VALUES ('Porche', 'Patrick', 'Eugene', 29, 'employed'),
			 ('Porche', 'Ashley', 'Nicole', 28, 'employed'),
			 ('Porche', 'Patrick', 'Eugene', 52, 'employed');

SELECT * FROM employees;

-- Edge Cases
-- Null Values
INSERT INTO employees (last_name, first_name, middle_name, age, current_status)
VALUES ('Porche', NULL, 'Eugene', 29, 'employed');
INSERT INTO employees (first_name, middle_name, age, current_status)
VALUES ('Patrick', 'Eugene', 29, 'employed');
INSERT INTO employees (last_name, first_name, middle_name, age)
VALUES ('Porche', 'Patrick', 'Eugene', 29,);

SELECT * FROM employees;

-- Non Mandatory Data
INSERT INTO employees (last_name, first_name, age, current_status)
VALUES ('Henderson', 'Sherrie', 50, 'employed');

SELECT * FROM employees;

-- Duplicate Data
INSERT INTO employees (last_name, first_name, middle_name, age, current_status)
VALUES ('Lowe', 'Seth', 'Daniel', 24, 'employed');
INSERT INTO employees (last_name, first_name, middle_name, age, current_status)
VALUES ('Lowe', 'Seth', 'Daniel', 24, 'employed');

SELECT * FROM employees;

-- Define Primary Key a Different Way Under id
CREATE TABLE employees (employee_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
												last_name VARCHAR(20) NOT NULL,
												first_name VARCHAR(20) NOT NULL,
												middle_name VARCHAR(20),
												age INT NOT NULL,
												current_status VARCHAR(20) NOT NULL DEFAULT 'employed');

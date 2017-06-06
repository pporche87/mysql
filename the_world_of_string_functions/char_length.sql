SELECT
	CHAR_LENGTH('Hello World');

SELECT
 	author_lname, CHAR_LENGTH(author_lname)
	AS 'length'
FROM books;

SELECT
	CONCAT(author_lname, ' is ', CHAR_LENGTH(author_lname), ' characters long')
	AS 'author name and length'
FROM books;

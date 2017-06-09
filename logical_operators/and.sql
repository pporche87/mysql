SELECT title, CONCAT(author_fname, ' ', author_lname) AS 'full name', released_year
FROM books
WHERE author_lname = 'Eggers' AND released_year > 2010;

SELECT title, CONCAT(author_fname, ' ', author_lname) AS 'full name', released_year
FROM books
WHERE author_lname = 'Eggers' && released_year > 2010;

SELECT * FROM books
WHERE author_lname='Eggers' &&
released_year > 2010 &&
title LIKE '%novel%';

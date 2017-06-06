SELECT title FROM books LIMIT 3;

SELECT title, released_year FROM books
ORDER BY released_year DESC LIMIT 5;

 -- limit comes last
 -- does everything first then limits

 SELECT title, released_year FROM books
 ORDER BY released_year DESC LIMIT 2,5;

-- to retrieve all rows from a certain offset up to the end of the result set
-- you can use some large number for the second parameter
-- SELECT * FROM tbl 95, 18446744073709551615;

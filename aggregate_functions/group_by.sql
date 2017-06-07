-- GROUP BY summarizes or aggregates identical data into single rows

-- SELECT title, author_fname, author_lname
-- FROM books
-- GROUP BY author_lname;

SELECT author_fname, author_lname, COUNT(*)
FROM books
GROUP BY author_fname, author_lname;

SELECT released_year, COUNT(*)
FROM books
GROUP BY released_year;

SELECT CONCAT('In ', released_year, ' ', COUNT(*), ' book(s) released')
AS 'year'
FROM books
GROUP BY released_year;

SELECT COUNT(*)
FROM books;

SELECT released_year, COUNT(*)
FROM books
GROUP BY released_year;

SELECT SUM(stock_quantity)
FROM books;

SELECT
	CONCAT(author_fname, ' ', author_lname),
	AVG(released_year)
FROM books
GROUP BY author_lname, author_fname;

SELECT
	CONCAT(author_fname, ' ', author_lname) as 'full name'
FROM books
WHERE pages = (SELECT MAX(pages)
							 FROM books);

SELECT
	CONCAT(author_fname, ' ', author_lname) as 'full name'
FROM books
ORDER BY pages DESC LIMIT 1;

SELECT
	released_year AS 'year',
	COUNT(*) AS '# books',
	AVG(pages) AS 'avg pages'
FROM books
GROUP BY released_year;

SELECT MAX(pages), title
FROM books;

SELECT * FROM books
WHERE pages = (SELECT MIN(pages)
							 FROM books);

SELECT * FROM books
WHERE pages = (SELECT MAX(pages)
							 FROM books);

-- minimum
SELECT title, pages FROM books
ORDER BY pages ASC LIMIT 1;

-- maximum
SELECT title, pages FROM books
ORDER BY pages DESC LIMIT 1;

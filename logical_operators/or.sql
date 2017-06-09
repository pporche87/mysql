SELECT title, author_lname, released_year FROM books
WHERE author_lname = 'Eggers' ||
released_year > 2010;

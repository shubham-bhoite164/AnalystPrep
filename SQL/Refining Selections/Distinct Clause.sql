-- Distinct will print all uniqute data

SELECT DISTINCT author_lname FROM books;

SELECT author_fname, author_lname FROM books;

SELECT DISTINCT CONCAT(author_fname, ',' ,author_lname) AS full_name FROM books;

SELECT DISTINCT author_fname, author_lname FROM books;


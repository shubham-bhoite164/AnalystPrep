-- Find the year each author published their first book 
select author_fname, author_lname, min(released_year)
from books
group by author_fname, author_lname;


-- Find the year each author's latest book
select author_fname, author_lname, max(released_year)
from books
group by author_fname, author_lname;


-- Find min & max releases year 
select author_fname, author_lname, min(released_year), max(released_year)
from books
group by author_fname, author_lname;

-- Find the number of books written by author

SELECT 
	author_lname, 
	COUNT(*) as books_written, 
	MAX(released_year) AS latest_release,
	MIN(released_year)  AS earliest_release
FROM books GROUP BY author_lname;


SELECT 
	author_lname, 
	COUNT(*) as books_written, 
	MAX(released_year) AS latest_release,
	MIN(released_year)  AS earliest_release,
	MAX(pages) AS longest_page_count
FROM books GROUP BY author_lname;


-- Find the longest page count for each author
select author_fname, author_lname, max(pages)
from books
group by author_fname, author_lname;




-- Used to sort the results

SELECT * FROM books
ORDER BY author_lname; -- Ascending by default
 
SELECT * FROM books
ORDER BY author_lname DESC;
 
SELECT * FROM books
ORDER BY released_year;

SELECT title, author_lname, author_fname, pages
from books order by pages;  	-- It'll oder by selected columns

-- Order by Multiple Columns
SELECT title, author_lname, author_fname, pages, released_year
from books order by author_fname , released_year;

select concat(author_fname, ' ', author_lname) 
as 'full_name' from books order by author_lname;

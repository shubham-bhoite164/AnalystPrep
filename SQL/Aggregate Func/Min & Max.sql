-- Minimum released year 
select min(released_year) from books;

-- Find the book with most number of pages 
select max(pages) from books;

select min(author_lname),max(author_fname) from books;

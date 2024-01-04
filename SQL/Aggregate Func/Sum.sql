-- Sum of all pages 
select sum(pages) from books;


-- Sum all the pages each author has written 
select author_fname, author_lname, sum(pages)
from books 
group by author_fname,author_lname;


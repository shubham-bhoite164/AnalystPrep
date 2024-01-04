
select author_fname,author_lname, count(*) 
from books
group by author_lname, author_fname;

-- another method using one column
select concat(author_fname, ' ', author_lname) as author, count(*)
from books
group by author;


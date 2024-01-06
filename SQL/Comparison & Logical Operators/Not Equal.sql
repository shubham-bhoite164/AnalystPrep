
use book_shop;
select* from books;

-- Select all books NOT published in 2017
select title from books 
where released_year != 2017;

-- Select all books written by...Carver OR Lahiri OR Smith
use book_shop;

select * from books where 
author_lname = 'Carver' OR author_lname = 'Lahiri' OR author_lname = 'Smith';

-- There is a better way for this & the solution is to use the IN operator 

select * from books where 
author_lname IN('Smith','Lahiri','Carver');

-- NOT IN
SELECT title, author_lname FROM books
WHERE author_lname NOT IN ('Carver', 'Lahiri', 'Smith');

-- Select all the books not published in even number year after 2000 ( We can use IN or NOT IN as well :)  )
select * from books where 
released_year > 2000 and released_year % 2 = 1;
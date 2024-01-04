-- Calculate the average released year across all books 
select avg(released_year) from books;

-- Calculate the avg stock quantity for books released in the same year & number of books
select released_year, avg(stock_quantity), count(*) as 'Number of books'
from books 
group by released_year;

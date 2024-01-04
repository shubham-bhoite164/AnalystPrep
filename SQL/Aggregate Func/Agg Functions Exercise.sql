-- Print the total number of books in the database 
select count(book_id) from books;

select * from books;

-- Print out how many books were released in each year 
select released_year, count(*)
from books 
group by released_year;

-- Print out the total number of books in stock 
select sum(stock_quantity) from books;

-- Find the average released_year for each author 
select author_fname, author_lname, avg(released_year)
from books 
group by author_fname, author_lname;

-- Find the full name of the author who wrote the longest book
select concat(author_fname,' ', author_lname) as 'Full Name' , pages
from books
where pages = (select max(pages) from books);

-- Print the released year, the number of books released in that year and avg pages in that books.
select released_year as 'Year', count(*) as books ,avg(pages) as 'Avg Pages'
from books 
group by released_year;
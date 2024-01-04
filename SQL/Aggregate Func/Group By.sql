
select author_lname, count(*) from books
group by author_lname;


select author_lname, count(*) as books_written from books
group by author_lname order by books_written;

-- Find how many books released in a specific year 
select released_year, count(*) as times_released from books 
group by released_year;
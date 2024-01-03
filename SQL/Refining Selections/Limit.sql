
SELECT book_id, title, released_year from books limit 5; -- It'll give first 5

-- Print first 5 released books
select title,released_year from books order by released_year limit 5;

-- Sort books by released year and print books between 3 and 10;
SELECT title, released_year FROM books 
ORDER BY released_year LIMIT 3,10;

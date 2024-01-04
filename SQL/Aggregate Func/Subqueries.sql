-- Find the title of the longest book without using order by
select title, pages from books
where pages = (select max(pages) from books);


-- Find the title of a book that was released earliest 
select title, released_year from books
where released_year = (select min(released_year) from books);

-- Using subquaries we can get multitle solutions but limiting it we can get, that's a main use of sub quary


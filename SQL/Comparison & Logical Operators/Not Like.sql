-- Check if there is any space in a title
select title from books where title like '% %';

-- Check if there is not any space in a title
select title from books where title not like '% %';

-- The title does not cantains letter e
SELECT * FROM books
WHERE title NOT LIKE '%e%';
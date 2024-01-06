-- SELECT books written by Dave Eggers,published after the year 2010

select title, author_fname, author_lname, released_year from books where 
author_fname = 'Dave' and author_lname = 'Eggers' and released_year > 2010;

SELECT title, author_lname, released_year FROM books
WHERE released_year > 2010
AND author_lname = 'Eggers'
AND title LIKE '%novel%';


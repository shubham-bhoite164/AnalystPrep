select count(*) from books; -- It'll count the number of rows
select count(author_fname) from books;

-- Find number of unique author names 
select count(distinct author_fname) from books;

select count(distinct released_year) from books;

-- count the number of title row contains the word 'the'
select count(*) from books where title like '%the%';


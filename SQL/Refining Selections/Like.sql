use book_shop;
select title, author_fname, author_lname from books where author_fname = 'David';



-- There's a book I'm looking for... But I can't remember the title!
-- I know the author's first name is David... Or wait, maybe it's Dan...or Dave

select title, author_fname, author_lname from books  WHERE author_fname LIKE '%da%';
-- If there is a 'da' in a word then it'll print

select * from books where title Like '%:%';

Select * from books where author_fname LIKE '____';
-- Here I have added 4 underscores. It'll print the 

Select * from books where author_fname LIKE '_a_';

 -- % and _ is a wildcard





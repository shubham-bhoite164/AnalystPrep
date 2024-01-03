SELECT REVERSE(UPPER('Why does my cat looks good'));

SELECT REPLACE(title,' ', '->') as title from books;

select author_lname as 'forwards' , reverse(author_lname) as 'backwords' from books;

select concat(upper(author_fname) , ' ' , upper(author_lname)) as 'full name in caps' from books;

select concat(title, ' ', 'was released in',' ', released_year) as 'blurb' from books;

select title, char_length(title) as 'character count' from books;

select concat(substring(title,1,10) , '...') as 'short title', 
	concat(author_lname, ',', author_fname) as 'author',
    concat(stock_quantity, ' ', 'in stock') as 'quantity' from books;
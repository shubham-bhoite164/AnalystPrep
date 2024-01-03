Select substring(title,1,10) from books;

Select concat(substring(title,1,10),'....') as short_title from books;  -- The Namesa....

select concat(substring(author_fname,1,1) , '.',substring(author_lname,1,1),'.') 
	as Author_initials from books; 	-- J.L.
select * from books; 

-- Select All Books Written Before 1980 (non inclusive)
select title, released_year from books 
where released_year > 1980;

-- Select All Books Written By Eggers Or Chabon
select * from books where
author_lname IN ('Eggers', 'Chabon');

-- Select All Books Written By Lahiri, Published after 2000
select * from books where 
author_lname = 'Lahiri' AND released_year >= 2000;

-- Select All books with page counts between 100 and 200
select * from books where 
pages between 100 and 200;

-- Select all books where author_lname  starts with a 'C' or an 'S''
select * from books where 
author_lname like 'C%' or author_lname like 'S%';


-- If title contains 'stories'   -> Short Stories
-- Just Kids and A Heartbreaking Work  -> Memoir
-- Everything Else -> Novel

select title, author_lname, 
case 
	when title like '%Stories%' then 'Short Stories'
    when title like '%A Heartbreaking Work of Staggering Genius%' then 'Memoir'
    when title like '%Just Kids%' then 'Memoir'
    else 'Novel'
end as Type
from books;



-- 
SELECT author_fname, author_lname,
	CASE
        WHEN COUNT(*) = 1 THEN '1 book'
        ELSE CONCAT(COUNT(*), ' books')
	END AS count
FROM books
WHERE author_lname IS NOT NULL
GROUP BY author_fname, author_lname;
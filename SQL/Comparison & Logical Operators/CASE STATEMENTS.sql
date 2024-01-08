-- If book is published after If should print 'Modern Lit' else it should print '20th Century Lit' 
-- The the new column should be added as GENERE 

select title, released_year,
	CASE 	
		WHEN released_year >= 2000 THEN 'Modern LIT'
        ELSE '20th Century Lit'
	END AS GENERE
FROM books;


-- If books stock is between 0 to 50 then print *, between 50 t0 100 then print '**' else print '***'
select title, stock_quantity,
CASE
	when stock_quantity between 0 and 50 then '*'
    when stock_quantity between 51 and 100 then '**'
    else '***'
END as Stonkssssssss
FROM books;

-- A Little More Succinct
SELECT title, stock_quantity,
    CASE 
        WHEN stock_quantity <= 50 THEN '*'
        WHEN stock_quantity <= 100 THEN '**'
        ELSE '***'
    END AS STOCK
FROM books;   


-- Another one :)
SELECT 
    title,
    stock_quantity,
    CASE
        WHEN stock_quantity <= 40 THEN '*'
        WHEN stock_quantity <= 70 THEN '**'
        WHEN stock_quantity <= 100 THEN '***'
        WHEN stock_quantity <= 140 THEN '****'
        ELSE '*****'
    END AS stock
FROM
    books;


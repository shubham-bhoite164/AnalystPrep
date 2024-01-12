select * from full_reviews;


select title, avg(rating) from full_reviews
group by title with rollup;


select title, count(rating) from full_reviews
group by title with rollup;




SELECT 
    first_name, released_year, genre, AVG(rating)
FROM
    full_reviews
GROUP BY released_year , genre , first_name WITH ROLLUP;
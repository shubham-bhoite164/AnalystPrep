-- Print the avg rating more than 6

select title, avg(rating) from full_reviews
group by title
having avg(rating) > 6;

-- Basically is Where for Group by
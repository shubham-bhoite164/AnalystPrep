-- Make below thing happen

-- +----------------------+--------+
-- | title                | rating |
-- +----------------------+--------+
-- | Archer               |    8.0 |
-- | Archer               |    7.5 |
-- | Archer               |    8.5 |
-- | Archer               |    7.7 |
-- | Archer               |    8.9 |
-- | Arrested Development |    8.1 |
-- | Arrested Development |    6.0 |
-- | Arrested Development |    8.0 |
-- | Arrested Development |    8.4 |
-- | Arrested Development |    9.9 |
-- | Bob's Burgers        |    7.0 |
-- | Bob's Burgers        |    7.5 |
-- | Bob's Burgers        |    8.0 |
-- | Bob's Burgers        |    7.1 |
-- | Bob's Burgers        |    8.0 |
-- +----------------------+--------+


-- Solution
select title, rating 
from reviews
join series on series.id = reviews.series_id;
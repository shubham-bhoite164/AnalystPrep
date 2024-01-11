-- Make below thing happen 

-- +----------------------+--------+-----------------+
-- | title                | rating | reviewer        |
-- +----------------------+--------+-----------------+
-- | Archer               |    8.0 | Thomas Stoneman |
-- | Archer               |    7.7 | Domingo Cortes  |
-- | Archer               |    8.5 | Kimbra Masters  |
-- | Archer               |    7.5 | Wyatt Skaggs    |
-- | Archer               |    8.9 | Colt Steele     |
-- | Arrested Development |    8.4 | Pinkie Petit    |
-- | Arrested Development |    9.9 | Colt Steele     |
-- | Arrested Development |    8.1 | Thomas Stoneman |
-- | Arrested Development |    6.0 | Domingo Cortes  |
-- | Arrested Development |    8.0 | Kimbra Masters  |
-- | Bob's Burgers        |    7.0 | Thomas Stoneman |
-- | Bob's Burgers        |    8.0 | Domingo Cortes  |
-- | Bob's Burgers        |    7.1 | Kimbra Masters  |
-- | Bob's Burgers        |    7.5 | Pinkie Petit    |
-- | Bob's Burgers        |    8.0 | Colt Steele     |
-- +----------------------+--------+-----------------+ 


select title, rating, concat(first_name, ' ', last_name) as reviewer
from reviews
join reviewers on reviewers.id = reviews.reviewer_id
join series on series.id = reviews.series_id
order by title;









-- Below are multiple ways

SELECT 
    title,
    rating,
    CONCAT(first_name, ' ', last_name) AS reviewer
FROM
    reviews
        INNER JOIN
    series ON reviews.series_id = series.id
        INNER JOIN
    reviewers ON reviews.reviewer_id = reviewers.id;
 
 
 
SELECT 
    title,
    rating,
    CONCAT(first_name, ' ', last_name) AS reviewer
FROM
    series
        INNER JOIN
    reviews ON reviews.series_id = series.id
        INNER JOIN
    reviewers ON reviews.reviewer_id = reviewers.id;
 
 
 
SELECT 
    title,
    rating,
    CONCAT(first_name, ' ', last_name) AS reviewer
FROM
    reviewers
        INNER JOIN
    reviews ON reviews.reviewer_id = reviewers.id
        INNER JOIN
    series ON reviews.series_id = series.id;
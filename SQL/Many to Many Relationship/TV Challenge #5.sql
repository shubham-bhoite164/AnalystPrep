-- Make below thing happen 

-- +-----------+------------+
-- | genre     | avg_rating |
-- +-----------+------------+
-- | Animation |    7.86000 |
-- | Comedy    |    8.16250 |
-- | Drama     |    8.04375 |
-- +-----------+------------+

select genre, avg(rating) as avg_rating
from series 
join reviews on series.id = reviews.series_id
group by genre;
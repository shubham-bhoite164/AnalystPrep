-- Make below thing happen 

-- +-----------------------+
-- | unreviewed_series     |
-- +-----------------------+
-- | Malcolm In The Middle |
-- | Pushing Daisies       |
-- +-----------------------+


select title as unreviewed_series
from series
left join reviews on series.id = reviews.series_id
where rating is Null;
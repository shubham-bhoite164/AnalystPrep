-- This table may have duplicate rows.
-- This table contains information collected from some queries on a database.
-- The position column has a value from 1 to 500.
-- The rating column has a value from 1 to 5. Query with rating less than 3 is a poor query.

-- Write a solution to find each query_name, the quality and poor_query_percentage.
-- Both quality and poor_query_percentage should be rounded to 2 decimal places.

select query_name, round(sum(rating/position)/count(*),2) as quality, round(sum(rating<3)/count(*)*100,2) as poor_query_percentage
from Queries
where query_name is not null
group by query_name;
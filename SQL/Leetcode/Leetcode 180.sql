-- +-------------+---------+
-- | Column Name | Type    |
-- +-------------+---------+
-- | id          | int     |
-- | num         | varchar |
-- +-------------+---------+
-- In SQL, id is the primary key for this table.
-- id is an autoincrement column.
--  

-- Find all numbers that appear at least three times consecutively.

-- Return the result table in any order

select distinct num as ConsecutiveNums
from (
select *, 
lag(num) over(order by id) as prev,
lead(num) over(order by id) as next
from Logs) as nextprev
where num = prev and prev = next
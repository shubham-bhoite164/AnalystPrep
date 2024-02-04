-- id is the primary key (column with unique values) for this table.
-- Each row of this table contains an email. The emails will not contain uppercase letters.
-- Write a solution to report all the duplicate emails. Note that it's guaranteed that the email field is not NULL.
-- Return the result table in any order.

with cte as 
(select email, count(*) as emailcount
from person 
group by email)
select email 
from cte 
where emailcount > 1;
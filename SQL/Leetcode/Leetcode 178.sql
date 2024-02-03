-- Write a solution to find the rank of the scores. The ranking should be calculated according to the following rules:

-- The scores should be ranked from the highest to the lowest.
-- If there is a tie between two scores, both should have the same ranking.
-- After a tie, the next ranking number should be the next consecutive integer value. In other words, there should be no holes between ranks.
-- Return the result table ordered by score in descending order.


with cte as
(select score,
dense_rank() over(order by score desc) as rnk
from scores)
select round(score,2) as score , rnk as 'rank'
from cte;
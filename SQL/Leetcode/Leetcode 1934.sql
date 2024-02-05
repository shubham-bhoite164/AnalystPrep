-- The confirmation rate of a user is the number of 'confirmed' messages divided by the 
-- total number of requested confirmation messages. The confirmation rate of a user that 
-- did not request any confirmation messages is 0. Round the confirmation rate to two decimal places.
-- Write a solution to find the confirmation rate of each user.
-- Return the result table in any order.

WITH cte AS (
SELECT s.user_id AS user_id, COUNT(*) tot_cnt,
SUM(CASE WHEN action = "confirmed" THEN 1 ELSE 0 END) AS con_cnt
FROM Signups s LEFT JOIN Confirmations c
ON s.user_id = c.user_id
GROUP BY s.user_id)

SELECT user_id, ROUND(con_cnt / tot_cnt,2) AS confirmation_rate
FROM cte
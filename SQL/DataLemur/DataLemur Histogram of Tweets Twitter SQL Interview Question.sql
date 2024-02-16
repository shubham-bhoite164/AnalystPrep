-- Assume you're given a table Twitter tweet data, write a query to obtain a histogram of tweets posted per user in 2022. 
-- Output the tweet count per user as the bucket and the number of Twitter users who fall into that bucket.

-- In other words, group the users by the number of tweets they posted in 2022 and count the number of users in each group.

-- tweets Table:
-- Column Name	Type
-- tweet_id	integer
-- user_id	integer
-- msg	string
-- tweet_date	timestamp

with cte as 
(SELECT user_id, COUNT(user_id) as tweetcount
from tweets 
where tweet_date > '01/01/2022 00:00:00'
GROUP BY user_id)
select COUNT(tweetcount) as tweet_bucket	, tweetcount as users_num
from cte
GROUP BY tweetcount
ORDER BY tweet_bucket
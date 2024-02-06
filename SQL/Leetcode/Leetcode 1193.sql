-- id is the primary key of this table.
-- The table has information about incoming transactions.
-- The state column is an enum of type ["approved", "declined"].

-- Write an SQL query to find for each month and country, the number of transactions and their total amount, 
-- the number of approved transactions and their total amount.
-- Return the result table in any order.

select DATE_FORMAT(trans_date, '%Y-%m') as month,country,count(*) as trans_count ,
sum(case when state = 'approved' then 1 else 0 end) as approved_count, 
sum(amount) as trans_total_amount, sum(case when state = 'approved' then amount else 0 end)as approved_total_amount
from Transactions
group by DATE_FORMAT(trans_date, '%Y-%m'),country;
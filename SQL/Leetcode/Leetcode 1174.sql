-- delivery_id is the column of unique values of this table.
-- The table holds information about food delivery to customers that make orders at some date and specify 
-- a preferred delivery date (on the same order date or after it).

-- If the customer's preferred delivery date is the same as the order date, then the order is called immediate; otherwise, it is called scheduled.
-- The first order of a customer is the order with the earliest order date that the customer made. It is guaranteed that a customer has precisely one first order.
-- Write a solution to find the percentage of immediate orders in the first orders of all customers, rounded to 2 decimal places.

select (ROUND (sum(CASE WHEN order_date=customer_pref_delivery_date THEN 1 ELSE 0 END) / count(*) , 4) * 100) as immediate_percentage 
from Delivery
where (customer_id, order_date) in (select customer_id, min(order_date) 
from Delivery group by customer_id);
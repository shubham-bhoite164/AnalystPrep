-- Print all the orders placed by boy George

select id from customers 
where last_name = 'George';

select * from orders where customer_id = 1;

-- Making it in the query
SELECT * FROM orders 
WHERE customer_id = (SELECT id FROM customers WHERE last_name = 'George');


-- To perform a (kind of useless) cross-join:
SELECT * FROM customers, orders;

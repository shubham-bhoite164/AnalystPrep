-- Print all the orders placed by boy George

select id from customers 
where last_name = 'George';

select * from orders where customer_id = 1;

-- Making it in ine query
SELECT * FROM orders 
WHERE customer_id = (SELECT id FROM customers WHERE last_name = 'George');
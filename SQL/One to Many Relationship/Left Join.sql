-- In the below code customers is a left table and orders is a right table
-- Form ke sath jo hoga vo hoga Left table aur Left Join ke ssath jo hoga vo hoga right table 


Select first_name, last_name, order_date from customers
LEFT Join orders
ON orders.customer_id = customers.id;

-- We can change the table sides as well
SELECT order_date, amount, first_name, last_name FROM orders
LEFT JOIN customers 
ON orders.customer_id = customers.id;
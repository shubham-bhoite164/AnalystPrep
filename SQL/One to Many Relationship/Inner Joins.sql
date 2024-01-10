select * from customers
join orders
	on customers.id = orders.customer_id;



-- Making it more precise
select first_name, last_name, order_date, amount from customers
join orders
	on customers.id = orders.customer_id;
    


-- The order doesn't matter here:
SELECT * FROM orders
JOIN customers ON customers.id = orders.customer_id;
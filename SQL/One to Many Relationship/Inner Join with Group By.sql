-- Normal Joins
select first_name, last_name, order_date, amount from customers 
Join orders
	on orders.customer_id = customers.id;



-- Print the total amout each customer spent 
select first_name, last_name, sum(amount) from customers 
join orders 
	on customers.id = orders.customer_id 
    group by first_name , last_name;
    
    
-- Let's make it order by
select first_name, last_name, sum(amount) as total from customers
join orders
	on customers.id = orders.customer_id
    group by first_name, last_name
    order by total;
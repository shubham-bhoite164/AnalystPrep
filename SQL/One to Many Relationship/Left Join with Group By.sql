
select first_name, last_name, sum(amount) as total from customers
Left Join orders
on customers.id = orders.customer_id
group by first_name, last_name;







SELECT 
    first_name, 
    last_name, 
    IFNULL(SUM(amount), 0) AS money_spent
FROM
    customers
        LEFT JOIN
    orders ON customers.id = orders.customer_id
GROUP BY first_name , last_name;

use cat;

select first_name, last_name, order_date, amount
from customers 
Right Join orders on customers.id = orders.customer_id;

insert into orders (amount,order_date) values (100,curdate());

select * from orders;
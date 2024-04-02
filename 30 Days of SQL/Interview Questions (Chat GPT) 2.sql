use 30daysofsql;

CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    phone_number VARCHAR(20)
);

INSERT INTO customers (customer_id, first_name, last_name, email, phone_number)
VALUES
    (1, 'John', 'Doe', 'john@example.com', '123-456-7890'),
    (2, 'Jane', 'Smith', 'jane@example.com', '234-567-8901'),
    (3, 'Michael', 'Johnson', 'michael@example.com', '345-678-9012'),
    (4, 'Emily', 'Williams', 'emily@example.com', '456-789-0123'),
    (5, 'David', 'Brown', 'david@example.com', '567-890-1234');

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    total_amount DECIMAL(10, 2),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

INSERT INTO orders (order_id, customer_id, order_date, total_amount)
VALUES
    (1, 1, '2024-03-01', 100.00),
    (2, 2, '2024-03-02', 150.00),
    (3, 3, '2024-03-03', 200.00),
    (4, 4, '2024-03-04', 120.00),
    (5, 5, '2024-03-05', 180.00);

-- Write a query to retrieve all customers along with the total number of orders they have placed.
select customers.customer_id, count(*) ordercount from customers
left join orders on customers.customer_id = orders.customer_id
group by customers.customer_id;

-- How would you find the customer(s) who placed the highest total amount of orders?
select customers.customer_id, count(*) ordercount from customers
left join orders on customers.customer_id = orders.customer_id
group by customers.customer_id
order by count(*) desc
limit 1;

-- Write a query to get the total revenue generated from all orders.
select sum(total_amount) from orders;

-- Retrieve the customer(s) who have not placed any orders.
select * from 
orders left join customers on orders.customer_id = customers.customer_id
where orders.customer_id is null;

-- Write a query to calculate the average order amount.
select avg(total_amount) from orders;
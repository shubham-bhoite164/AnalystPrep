use 30daysofsql;

CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(100),
    department_id INT,
    salary DECIMAL(10, 2)
);

INSERT INTO employees (emp_id, emp_name, department_id, salary)
VALUES
    (1, 'John Smith', 1, 50000.00),
    (2, 'Jane Doe', 2, 60000.00),
    (3, 'Alice Lee', 1, 55000.00),
    (4, 'Bob Brown', 3, 48000.00),
    (5, 'Sam White', 2, 52000.00),
    (6, 'Emma Green', 3, 62000.00),
    (7, 'Alex Wang', 1, 53000.00),
    (8, 'Lily Chen', 2, 58000.00),
    (9, 'David Kim', 3, 59000.00),
    (10, 'Sarah Liu', 1, 51000.00),
    (11, 'John Smith', 1, 50000.00), -- Duplicate record
    (12, 'Jane Doe', 2, 60000.00);    -- Duplicate record


with cte as (
select *, 
row_number() over(partition by emp_name) as rnk
from employees)
select * from cte where rnk > 1;
use 30daysofsql;

CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    department_id INT,
    salary DECIMAL(10, 2)
);

INSERT INTO employees (employee_id, first_name, last_name, department_id, salary)
VALUES
    (1, 'John', 'Doe', 1, 50000.00),
    (2, 'Jane', 'Smith', 1, 60000.00),
    (3, 'Michael', 'Johnson', 2, 55000.00),
    (4, 'Emily', 'Williams', 2, 52000.00),
    (5, 'David', 'Brown', 3, 62000.00);

CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100)
);

INSERT INTO departments (department_id, department_name)
VALUES
    (1, 'Engineering'),
    (2, 'Marketing'),
    (3, 'Sales');
    
select * from employees;
select * from departments;

-- Write a SQL query to retrieve all employees' first names and last names along with their department names.
select employees.first_name, employees.last_name, departments.department_name from employees 
left join departments on employees.employee_id = departments.department_id;

-- How would you find the total number of employees in each department?
select department_name, count(*) as count_of_emp from 
employees join departments on employees.employee_id = departments.department_id
group by department_name;

-- Write a query to get the highest salary from the employees table.
with cte as (
select *, 
dense_rank() over(order by salary desc) as rnk
from employees )
select * from cte where rnk = 1;


-- Retrieve the first name and last name of the employee(s) with the highest salary.
with cte as (
select *, 
dense_rank() over(order by salary desc) as rnk
from employees )
select concat(first_name, ' ' , last_name) as richman from cte where rnk = 1;

-- Write a query to get the average salary of employees.
select avg(salary) from employees;

-- How would you find the employee(s) who earn(s) more than the average salary?
select * from employees 
where salary > (select avg(salary) from employees);

-- Write a query to get the department(s) where no employee is assigned.
select * from 
employees left join departments on employees.employee_id = departments.department_id
where departments.department_id is null;

-- Write a query to delete the employee with the lowest salary.
with cte as (
select *, 
dense_rank() over(order by salary) as rnk
from employees)
delete from cte where rnk = 1;

-- How would you find the second-highest salary in the employees table?
with cte as (
select *, 
dense_rank() over(order by salary desc) as rnk
from employees )
select * from cte where rnk = 2;
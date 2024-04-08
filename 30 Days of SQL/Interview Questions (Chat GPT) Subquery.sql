use 30daysofsql;

-- Create departments table
CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50)
);

-- Insert sample data into departments table
INSERT INTO departments (dept_id, dept_name)
VALUES
    (1, 'HR'),
    (2, 'Finance'),
    (3, 'Marketing');


-- Create employees table
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(100),
    department_id INT,
    salary DECIMAL(10, 2)
);

-- Insert sample data into employees table
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
    (10, 'Sarah Liu', 1, 51000.00);


-- List all employees who earn more than the average salary in their department.
select * from employees e 
where salary > (select avg(salary) from employees where department_id = e.department_id);

-- List the names of employees who are in departments with fewer than three employees.
SELECT emp_name
FROM employees
WHERE department_id IN (
    SELECT department_id
    FROM employees
    GROUP BY department_id
    HAVING COUNT(*) < 3
);
-- Find the department(s) with the highest average salary.
with cte as (
select *, 
round(avg(salary) over(partition by department_id),2) as avgsal from employees)
select DISTINCT department_id from cte where avgsal = (select max(avgsal) from cte);

-- List the departments where the average salary is higher than the overall average salary.
with cte as (
select *, 
round(avg(salary) over(partition by department_id),2) as avgsal from employees)
select DISTINCT department_id from cte where avgsal > (select avg(salary) from cte);

-- For each department, list the employee with the highest salary.
with cte as(
select * , 
dense_rank() over(partition by department_id order by salary desc) as rnk from employees)
select * from cte where rnk = 1;
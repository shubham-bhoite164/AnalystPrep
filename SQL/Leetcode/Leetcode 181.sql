-- id is the primary key (column with unique values) for this table.
-- Each row of this table indicates the ID of an employee, their name, salary, and the ID of their manager.
-- Write a solution to find the employees who earn more than their managers.
-- Return the result table in any order.

select e.name as Employee from 
employee e 
join employee m on e.managerId = m.id
where e.salary > m.salary
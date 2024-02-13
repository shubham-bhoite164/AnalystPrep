-- employee_id is the column with unique values for this table.
-- This table contains information about the employees and the id of the manager they report to. Some employees do not report to anyone (reports_to is null). 
--  

-- For this problem, we will consider a manager an employee who has at least 1 other employee reporting to them.

-- Write a solution to report the ids and the names of all managers, the number of employees who report directly to them, and the average age of the reports rounded to the nearest integer.

-- Return the result table ordered by employee_id.

SELECT
E1.employee_id,E1.name,COUNT(E2.employee_id) as reports_count,round(avg(E2.age)) AS average_age
FROM
Employees E1
INNER JOIN Employees E2
ON E1.employee_id =E2.reports_to
group by E1.employee_id
order by E1.employee_id
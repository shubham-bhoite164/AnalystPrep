select emp_no, department, salary,
rank() over(order by salary desc) as overall_salary_rank
from employees;

-- Write a query to print the rank of salary by departmentand the and the overall rank
select emp_no, department, salary, 
rank() over(partition by department order by salary) as department_rank,   -- This will print the rank of salary in department
rank() over(order by salary) as total_rank					-- This will print the total rank of salary
from employees
order by department;

-- Results

-- 19	customer service	31000	1	1
-- 15	customer service	38000	2	2
-- 18	customer service	40000	3	3
-- 16	customer service	45000	4	4
-- 21	customer service	55000	5	5
-- 20	customer service	56000	6	6
-- 17	customer service	61000	7	9
-- 5	engineering	67000	1	12
-- 2	engineering	69000	2	13
-- 3	engineering	70000	3	14
-- 1	engineering	80000	4	17
-- 6	engineering	89000	5	18
-- 7	engineering	91000	6	19
-- 4	engineering	103000	7	20
-- 8	sales	59000	1	7
-- 12	sales	60000	2	8
-- 13	sales	61000	3	9
-- 14	sales	61000	3	9
-- 9	sales	70000	5	14
-- 11	sales	72000	6	16
-- 10	sales	159000	7	21

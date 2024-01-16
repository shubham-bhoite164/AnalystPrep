select emp_no,department,salary,avg(salary) 
over(partition by department) from employees;

-- The table will look like below

-- 15	customer service	38000	46571.4286
-- 16	customer service	45000	46571.4286
-- 17	customer service	61000	46571.4286
-- 18	customer service	40000	46571.4286
-- 19	customer service	31000	46571.4286
-- 20	customer service	56000	46571.4286
-- 21	customer service	55000	46571.4286
-- 1	engineering	80000	81285.7143
-- 2	engineering	69000	81285.7143
-- 3	engineering	70000	81285.7143
-- 4	engineering	103000	81285.7143
-- 5	engineering	67000	81285.7143
-- 6	engineering	89000	81285.7143
-- 7	engineering	91000	81285.7143
-- 8	sales	59000	77428.5714
-- 9	sales	70000	77428.5714
-- 10	sales	159000	77428.5714
-- 11	sales	72000	77428.5714
-- 12	sales	60000	77428.5714
-- 13	sales	61000	77428.5714
-- 14	sales	61000	77428.5714


-- If we use group by then 
select department, avg(salary) 
from employees
group by department;

-- The table will look like below 

-- sales	77428.5714
-- engineering	81285.7143
-- customer service	46571.4286


-- Count how many employees are in each department using group by
select department, count(*)
from employees
group by department;

-- Result
-- engineering	7
-- sales	7
-- customer service	7


-- Count how many employees are in each department using Partition By
select department, count(*)
over(partition by department)
from employees;

-- Result
-- customer service	7
-- customer service	7
-- customer service	7
-- customer service	7
-- customer service	7
-- customer service	7
-- customer service	7
-- engineering	7
-- engineering	7
-- engineering	7
-- engineering	7
-- engineering	7
-- engineering	7
-- engineering	7
-- sales	7
-- sales	7
-- sales	7
-- sales	7
-- sales	7
-- sales	7
-- sales	7

-- Sum of the payroll for each department 
select emp_no, department, 
sum(salary) over(partition by department) as 'Sum of Salary by dept',
sum(salary) over() as 'sum of all salary'
from employees;

-- Results
-- 15	customer service	326000	1437000
-- 16	customer service	326000	1437000
-- 17	customer service	326000	1437000
-- 18	customer service	326000	1437000
-- 19	customer service	326000	1437000
-- 20	customer service	326000	1437000
-- 21	customer service	326000	1437000
-- 1	engineering	569000	1437000
-- 2	engineering	569000	1437000
-- 3	engineering	569000	1437000
-- 4	engineering	569000	1437000
-- 5	engineering	569000	1437000
-- 6	engineering	569000	1437000
-- 7	engineering	569000	1437000
-- 8	sales	542000	1437000
-- 9	sales	542000	1437000
-- 10	sales	542000	1437000
-- 11	sales	542000	1437000
-- 12	sales	542000	1437000
-- 13	sales	542000	1437000
-- 14	sales	542000	1437000
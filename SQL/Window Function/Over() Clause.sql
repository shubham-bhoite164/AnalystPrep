select * from employees;

-- Using normal group by
select department, avg(salary)
from employees
group by department;

-- Using Over()
select emp_no,department,salary,avg(salary) 
over() from employees;

-- 1	engineering	80000	68428.5714
-- 2	engineering	69000	68428.5714
-- 3	engineering	70000	68428.5714
-- 4	engineering	103000	68428.5714
-- 5	engineering	67000	68428.5714
-- 6	engineering	89000	68428.5714
-- 7	engineering	91000	68428.5714
-- 8	sales	59000	68428.5714
-- 9	sales	70000	68428.5714
-- 10	sales	159000	68428.5714
-- 11	sales	72000	68428.5714
-- 12	sales	60000	68428.5714
-- 13	sales	61000	68428.5714
-- 14	sales	61000	68428.5714
-- 15	customer service	38000	68428.5714
-- 16	customer service	45000	68428.5714
-- 17	customer service	61000	68428.5714
-- 18	customer service	40000	68428.5714
-- 19	customer service	31000	68428.5714
-- 20	customer service	56000	68428.5714
-- 21	customer service	55000	68428.5714

-- Above we can see the avg salary in front of everyone
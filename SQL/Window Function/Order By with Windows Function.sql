
SELECT 
    emp_no, 
    department, 
    salary, 
    SUM(salary) OVER(PARTITION BY department ORDER BY salary) AS rolling_dept_salary,
    SUM(salary) OVER(PARTITION BY department) AS total_dept_salary
FROM employees;

-- Results
-- 19	customer service	31000	31000	326000
-- 15	customer service	38000	69000	326000
-- 18	customer service	40000	109000	326000
-- 16	customer service	45000	154000	326000
-- 21	customer service	55000	209000	326000
-- 20	customer service	56000	265000	326000
-- 17	customer service	61000	326000	326000
-- 5	engineering	67000	67000	569000
-- 2	engineering	69000	136000	569000
-- 3	engineering	70000	206000	569000
-- 1	engineering	80000	286000	569000
-- 6	engineering	89000	375000	569000
-- 7	engineering	91000	466000	569000
-- 4	engineering	103000	569000	569000
-- 8	sales	59000	59000	542000
-- 12	sales	60000	119000	542000
-- 13	sales	61000	241000	542000
-- 14	sales	61000	241000	542000
-- 9	sales	70000	311000	542000
-- 11	sales	72000	383000	542000
-- 10	sales	159000	542000	542000






SELECT 
    emp_no, 
    department, 
    salary, 
    MIN(salary) OVER(PARTITION BY department ORDER BY salary DESC) as rolling_min
FROM employees;

-- Results 
-- 17	customer service	61000	61000
-- 20	customer service	56000	56000
-- 21	customer service	55000	55000
-- 16	customer service	45000	45000
-- 18	customer service	40000	40000
-- 15	customer service	38000	38000
-- 19	customer service	31000	31000
-- 4	engineering	103000	103000
-- 7	engineering	91000	91000
-- 6	engineering	89000	89000
-- 1	engineering	80000	80000
-- 3	engineering	70000	70000
-- 2	engineering	69000	69000
-- 5	engineering	67000	67000
-- 10	sales	159000	159000
-- 11	sales	72000	72000
-- 9	sales	70000	70000
-- 13	sales	61000	61000
-- 14	sales	61000	61000
-- 12	sales	60000	60000
-- 8	sales	59000	59000
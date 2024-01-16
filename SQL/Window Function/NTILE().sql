SELECT 
    emp_no, 
    department, 
    salary,
    NTILE(4) OVER(PARTITION BY department ORDER BY salary DESC) AS dept_salary_quartile,
	NTILE(4) OVER(ORDER BY salary DESC) AS salary_quartile
FROM employees;


--  NTILE() uses the specified ordering to assign bucket numbers in a way that aims for a balanced distribution of rows 
--  across the given number of buckets. The specific algorithm may vary across database systems, 
--  but the general idea is to evenly distribute the rows based on the ordering criteria.






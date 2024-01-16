SELECT 
    emp_no, 
    department, 
    salary,
    FIRST_VALUE(emp_no) OVER(PARTITION BY department ORDER BY salary DESC) as highest_paid_dept,
    FIRST_VALUE(emp_no) OVER(ORDER BY salary DESC) as highest_paid_overall
FROM employees;



-- FIRST_VALUE() is a window function in SQL that returns the first value in an ordered set of rows within a window frame 
-- defined by an OVER clause. This function is useful when you want to retrieve the value of a 
-- specific column for the first row in each partition of a result set.

select emp_no, department, salary, 
row_number() over(partition by department order by salary) as row_num, -- This will add a row numbers by department
rank() over(partition by department order by salary) as department_rank,   -- This will print the rank of salary in department
dense_rank() over(order by salary) as dense_total_rank,				-- This will print the total rank of salary
dense_rank() over(partition by department order by salary) as dense_department_rank,   -- This will print the rank of salary in department
rank() over(order by salary) as total_rank,					-- This will print the total rank of salary
row_number() over(order by salary) as overalll_row_num -- This will add a overall row numbers b
from employees
order by department;
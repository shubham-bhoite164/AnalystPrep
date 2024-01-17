use cat;
select emp_no, department, salary, 
LAG(Salary) Over(order by salary desc) as 'Lag Salary',
salary - LAG(Salary) Over(order by salary desc) as 'Salary Diff'
from employees;


select emp_no, department, salary, 
LEAD(Salary) Over(order by salary desc) as 'Lead Salary',
salary - LEAD(Salary) Over(order by salary desc) as 'Salary Diff'
from employees;
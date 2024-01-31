-- Q-45. Write an SQL query to print the names of employees having the highest salary in each department.
use org;

with high_sal as 
(select *,
rank() over(partition by department order by salary desc) as rnk
from worker w1) 
select * from high_sal 
where rnk =1 ;

-- Q-46. Write an SQL query to fetch three max salaries from a table.

with highsal as (
select *, 
dense_rank() over(order by salary desc) as salrank
from worker)
select distinct salary from highsal
where salrank <= 3;

-- Q-47. Write an SQL query to fetch three min salaries from a table.

with highsal as (
select *, 
rank() over(order by salary) as rnk
from worker)
select * from highsal 
where rnk<=3;

-- Q-48. Write an SQL query to fetch nth max salaries from a table.
 with high_sal as (
select *, 
dense_rank() over(order by salary desc) as rnk
from worker)
select * from highsal 
where rnk = n;

-- Q-49. Write an SQL query to fetch departments along with the total salaries paid for each of them.
select department, sum(salary) as sum_sal
from worker
group by department;

-- Q-50. Write an SQL query to fetch the names of workers who earn the highest salary.
select concat(first_name, ' ', last_name) as Fullname, Salary
from worker 
where salary = (select max(salary) from worker)

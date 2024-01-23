-- It always returns one row and one column

-- find the employees who's salary is more than avg salary earned by all employee
select * from worker -- Outer Query / main query
where salary > (select avg(salary) from worker); -- subquery / inner query

-- Another way without using where clause
select * 
from worker w1
join (select avg(SALARY) sal from worker) avg_sal
	on w1.salary > avg_sal.sal;
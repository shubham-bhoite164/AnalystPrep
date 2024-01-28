-- Q-36. Write an SQL query to show the second-highest salary from a table.
select distinct salary from worker
order by salary desc 
limit 1 offset 1;

-- Another way is 
select max(salary) from worker 
where SALARY < (select max(salary) from worker);

-- Q-37. Write an SQL query to show one row twice in the results from a table.
select * from worker
union all 
select * from worker;


-- Q-38. Write an SQL query to fetch intersecting records of two tables.
select * from worker 
join bonus on worker.WORKER_ID = bonus.WORKER_REF_ID;

-- Q-39. Write an SQL query to fetch the first 50% of records from a table.
select * from worker
where WORKER_ID <= (select count(WORKER_ID)/2 from worker);

-- Q-40. Write an SQL query to fetch the departments that have less than five people in them.
select department, count(WORKER_ID) as dept_emp
from worker
group by DEPARTMENT
having dept_emp < 5;
-- Q-41. Write an SQL query to show all departments along with the number of people in there.
select * from worker;
select department, count(worker_id) as Total_People
from worker 
group by DEPARTMENT;

-- Q-42. Write an SQL query to show the last record from a table.
select * from worker
where WORKER_ID = (select max(WORKER_ID) from worker);

-- Q-43. Write an SQL query to fetch the first row of a table.
select * from worker
where WORKER_ID = (select min(WORKER_ID) from worker);

-- Q-44. Write an SQL query to fetch the last five records from a table.
select * from worker
where WORKER_ID in (select WORKER_ID from worker
order by WORKER_ID desc limit 5);

-- Q-45. Write an SQL query to print the names of employees having the highest salary in each department.
select * from
(select first_name, department, salary,
rank() over(partition by department order by salary desc) as rnk
from worker w1) as x
where x.rnk = 1;
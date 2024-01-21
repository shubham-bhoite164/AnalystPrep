-- Q-21. Write an SQL query to fetch the count of employees working in the department ‘Admin’.
select department, count(*)
from worker where department = 'Admin'
group by department;

-- Q-22. Write an SQL query to fetch worker names with salaries >= 50000 and <= 100000.
select concat(first_name, ' ',last_name) as full_name ,salary from worker 
where salary >= 50000 and salary <= 100000;

-- Q-23. Write an SQL query to fetch the number of workers for each department in descending order.
select department, count(*) as num_workers
from worker 
group by department
order by num_workers;

-- Q-24. Write an SQL query to print details of the Workers who are also Managers.
select * from worker
join title on worker.worker_id = title.worker_ref_id
where worker_title = 'Manager';

-- Q-25. Write an SQL query to fetch duplicate records having matching data in some fields of a table.
select worker_title, affected_from, count(*)
from title 
group by worker_title, affected_from
having count(*)>1;
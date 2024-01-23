-- it'll return multile row and multiple columns 
-- It'll also return multiple rows and only 1 column

-- Find the employees who earn highest salary in each department
-- 1) get the highest salary in each department 
-- 2) Compare with table to get name of emp

-- 1)
select department, max(salary) from worker w1
group by department;

-- 2)
select * from worker
where (department, salary); 

-- Combine 1) and 2) 
select * from worker
where (department, salary) IN (select department, max(salary) from worker w1
group by department);
-- we used IN isted of = because we need to print multiple rows





-- Single Column and multiple row subquery

-- Find employee who do not have bonus
select * from worker
where worker_id not in (select WORKER_REF_ID from bonus);


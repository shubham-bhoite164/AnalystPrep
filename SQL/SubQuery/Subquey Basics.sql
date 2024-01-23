use org;
-- find the employees who's salary is more than avg salary earned by all employee
select * from worker -- Outer Query / main query
where salary > (select avg(salary) from worker); -- subquery / inner query


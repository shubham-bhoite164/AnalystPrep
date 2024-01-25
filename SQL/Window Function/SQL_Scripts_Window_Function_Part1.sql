use org;
create table employee
( emp_ID int
, emp_NAME varchar(50)
, DEPT_NAME varchar(50)
, SALARY int);

insert into employee values(101, 'Mohan', 'Admin', 4000);
insert into employee values(102, 'Rajkumar', 'HR', 3000);
insert into employee values(103, 'Akbar', 'IT', 4000);
insert into employee values(104, 'Dorvin', 'Finance', 6500);
insert into employee values(105, 'Rohit', 'HR', 3000);
insert into employee values(106, 'Rajesh',  'Finance', 5000);
insert into employee values(107, 'Preet', 'HR', 7000);
insert into employee values(108, 'Maryam', 'Admin', 4000);
insert into employee values(109, 'Sanjay', 'IT', 6500);
insert into employee values(110, 'Vasudha', 'IT', 7000);
insert into employee values(111, 'Melinda', 'IT', 8000);
insert into employee values(112, 'Komal', 'IT', 10000);
insert into employee values(113, 'Gautham', 'Admin', 2000);
insert into employee values(114, 'Manisha', 'HR', 3000);
insert into employee values(115, 'Chandni', 'IT', 4500);
insert into employee values(116, 'Satya', 'Finance', 6500);
insert into employee values(117, 'Adarsh', 'HR', 3500);
insert into employee values(118, 'Tejaswi', 'Finance', 5500);
insert into employee values(119, 'Cory', 'HR', 8000);
insert into employee values(120, 'Monica', 'Admin', 5000);
insert into employee values(121, 'Rosalin', 'IT', 6000);
insert into employee values(122, 'Ibrahim', 'IT', 8000);
insert into employee values(123, 'Vikram', 'IT', 8000);
insert into employee values(124, 'Dheeraj', 'IT', 11000);
COMMIT;



-- Fetch the first 2 employees from each department to join the company

select * from (
			select e.*,
			row_number() over (partition by DEPT_NAME order by emp_ID) as rn
			from employee as e) as x
where x.rn < 3;


-- Fetch the top 3 employees in each department earning the max salary
select * from (select e.*,
rank() over(partition by dept_name order by salary desc) as sal_rank
from employee as e) as x
where x.sal_rank < 4;

-- Fetch a query to display if the salary of an employee is higher, lower or equal to previos employee 
select x.*, 
case
 when salary > lag_sal then 'higher'
 when salary < lag_sal then 'lower'
 when SALARY = LAG_SAL THEN 'equal'
end as sal_result
from (select e.*,
lag(salary) over(partition by dept_name order by salary desc) as lag_sal
from employee e) as x;

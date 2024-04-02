use 30daysofsql;

drop table employee;
CREATE TABLE Employee (
EmpID int NOT NULL,
EmpName Varchar(255),
Gender Char,
Salary int,
City Char(20) );
-- first run the above code then below code
INSERT INTO Employee
VALUES (1, 'Arjun', 'M', 75000, 'Pune'),
(2, 'Ekadanta', 'M', 125000, 'Bangalore'),
(3, 'Lalita', 'F', 150000 , 'Mathura'),
(4, 'Madhav', 'M', 250000 , 'Delhi'),
(5, 'Visakha', 'F', 120000 , 'Mathura');

-- Q1(a): Find the list of employees whose salary ranges between 2L to 3L.
select * from employee
where salary between 200000 and 300000;

-- Q1(b): Write a query to retrieve the list of employees from the same city.
select e1.empname, e1.city
from employee e1, employee e2
where e1.city = e2.city and e1.empid != e2.empid;

-- Q1(c): Query to find the null values in the Employee table.
select * from employee where empid is null;

-- Q2(a): Query to find the cumulative sum of employee’s salary.
select *, 
sum(salary) over(order by empid) as cumulative_sum from employee;

-- Q2(b): What’s the male and female employees ratio.
SELECT
    (SUM(CASE WHEN Gender = 'M' THEN 1 ELSE 0 END) * 100.0 / COUNT(*)) AS MalePct,
    (SUM(CASE WHEN Gender = 'F' THEN 1 ELSE 0 END) * 100.0 / COUNT(*)) AS FemalePct
FROM Employee;

-- Q2(c): Write a query to fetch 50% records from the Employee table.
select * from 
employee where empid <= (select count(*)/2 from employee);

-- Q3: Query to fetch the employee’s salary but replace the LAST 2 digits with ‘XX’
-- i.e 12345 will be 123XX
select concat(left(salary, length(salary)-2),'xx') as salaryxx from employee;

-- Q4: Write a query to fetch even and odd rows from Employee table.
select *,
case when empid%2 = 0 then 'even' else 'odd' end as 'Even and Odd'
from employee;

-- Q5(a): Write a query to find all the Employee names whose name:
-- • Begin with ‘A’
-- • Contains ‘A’ alphabet at second place
-- • Contains ‘Y’ alphabet at second last place
-- • Ends with ‘L’ and contains 4 alphabets
-- • Begins with ‘V’ and ends with ‘A’

-- • Begin with ‘A’
select * from employee where 
empname like 'A%';

-- • Contains ‘A’ alphabet at second place
select * from employee where 
empname like '_A';

-- Contains ‘Y’ alphabet at second last place
 SELECT * FROM Employee WHERE EmpName LIKE '%y_';
 
 --  • Ends with ‘L’ and contains 4 alphabets 
 SELECT * FROM Employee WHERE EmpName LIKE '____l';
 
 -- • Begins with ‘V’ and ends with ‘A’
 SELECT * FROM Employee WHERE EmpName LIKE 'V%a';
 
 
--   Q5(b): Write a query to find the list of Employee names which is:
--  • starting with vowels (a, e, i, o, or u), without duplicates
--  • ending with vowels (a, e, i, o, or u), without duplicates
--  • starting & ending with vowels (a, e, i, o, or u), without duplicates

--  • starting with vowels (a, e, i, o, or u), without duplicates
 SELECT DISTINCT EmpName
 FROM Employee
 WHERE LOWER(EmpName) REGEXP '[aeiou]%';
 
 --  • ending with vowels (a, e, i, o, or u), without duplicates
 SELECT DISTINCT EmpName
 FROM Employee
 WHERE LOWER(EmpName) REGEXP '%[aeiou]';
 
 --  • starting & ending with vowels (a, e, i, o, or u), without duplicates
SELECT DISTINCT EmpName
 FROM Employee
 WHERE LOWER(EmpName) REGEXP 
'^[aeiou].*[aeiou]$';

-- Q6: Find Nth highest salary from employee table with and without using the
--  TOP/LIMIT keywords

with cte as (
select *, 
dense_rank() over(order by salary desc) as rnk
from employee)
select empid,empname,salary,rnk from cte 
where rnk<3;
 
 --  Q7(a): Write a query to find and remove duplicate records from a table.
SELECT EmpID, EmpName, gender, Salary, city, 
COUNT(*) AS duplicate_count
 FROM Employee
 GROUP BY EmpID, EmpName, gender, Salary, city
 HAVING COUNT(*) > 1;
 
 --  Q7(b): Query to retrieve the list of employees working in city.
select e1.empid, e1.empname,e1.city from 
employee e1 join employee e2
where e1.city = e2.city and e1.empid <> e2.empid;

-- Remove duplicate city from the table 
delete from cars where empid in(
select city,max(empid) from employee 
group by city 
having count(*)>1);

-- Remove duplicate city from the table 

with cte as (
select *,
row_number() over(partition by city order by city) as rn
from employee)
delete from cte where rn > 1
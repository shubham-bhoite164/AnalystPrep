use 30daysofsql;

CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    DepartmentID INT,
    Salary DECIMAL(10, 2)
);

INSERT INTO Employees (EmployeeID, FirstName, LastName, DepartmentID, Salary)
VALUES
    (1, 'John', 'Doe', 1, 60000.00),
    (2, 'Jane', 'Smith', 2, 55000.00),
    (3, 'Michael', 'Johnson', 3, 65000.00),
    (4, 'Emily', 'Brown', 2, 58000.00),
    (5, 'David', 'Davis', 1, 62000.00),
    (6, 'Jessica', 'Lee', 2, 53000.00),
    (7, 'Christopher', 'Martinez', 3, 68000.00),
    (8, 'Amanda', 'Taylor', 1, 59000.00),
    (9, 'Daniel', 'Harris', 3, 64000.00),
    (10, 'Sarah', 'Wilson', 2, 56000.00);

CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50)
);

INSERT INTO Departments (DepartmentID, DepartmentName)
VALUES
    (1, 'IT'),
    (2, 'HR'),
    (3, 'Finance');

-- Write a query to retrieve the details of employees along with their department names.
select concat(Employees.firstname, ' ', Employees.lastname) as fullname, Departments.DepartmentName as DepartmentName from Employees
join Departments on Departments.DepartmentID =Employees.DepartmentID;

-- How would you find the average salary for each department?
select Departments.DepartmentName , round(avg(Employees.salary),2) as avgsalary from Employees
join Departments on Departments.DepartmentID =Employees.DepartmentID
group by Departments.DepartmentName;

-- Retrieve the names of employees who earn more than the average salary of their respective departments.
SELECT e.FirstName, e.LastName
FROM Employees e
INNER JOIN Departments d ON e.DepartmentID = d.DepartmentID
where e.salary > (select avg(salary) from employees where DepartmentID = e.DepartmentID);

-- Write a query to get the total number of employees in each department.
select Departments.DepartmentName, count(*) as EmployeeCount  from Employees
join Departments on Departments.DepartmentID =Employees.DepartmentID
group by Departments.DepartmentName;

-- Can you fetch the employee details along with the department name for employees earning the highest salary in each department?
with cte as (
select concat(Employees.firstname, ' ', Employees.lastname) as fullname, Employees.salary,
dense_rank() over(partition by Departments.DepartmentName order by Employees.salary desc) as rnk , Departments.DepartmentName
from Employees
join Departments on Departments.DepartmentID =Employees.DepartmentID)
select * from cte where rnk = 1;

-- How can you calculate the cumulative salary for each department using window functions?
select *, 
sum(Employees.salary) over(partition by Departments.DepartmentName order by Employees.EmployeeID) as cumsal
from Employees
join Departments on Departments.DepartmentID =Employees.DepartmentID;

-- Write a query to find the top 3 highest paid employees in the Finance department.
with cte as (
select Departments.DepartmentName, Employees.salary, concat(Employees.firstname, ' ', Employees.lastname) as fullname,
dense_rank() over(partition by Departments.DepartmentName order by Employees.salary desc) as rnk
from employees 
join Departments on Departments.DepartmentID =Employees.DepartmentID)
select * from cte where DepartmentName = "Finance" and rnk <= 3;
-- Q-6. Write an SQL query to print the FIRST_NAME from the Worker table after removing white spaces from the right side.
Select RTRIM(FIRST_NAME) from Worker;

-- Q-7. Write an SQL query to print the DEPARTMENT from the Worker table after removing white spaces from the left side.
Select LTRIM(FIRST_NAME) from Worker;

-- Q-8. Write an SQL query that fetches the unique values of DEPARTMENT from the Worker table and prints its length.
select distinct length(DEPARTMENT) as length
from Worker;

-- Q-9. Write an SQL query to print the FIRST_NAME from the Worker table after replacing ‘a’ with ‘A’.
select replace(FIRST_NAME,'a','A') from Worker;

-- Q-10. Write an SQL query to print the FIRST_NAME and LAST_NAME from the Worker table into a single column COMPLETE_NAME. 
-- A space char should separate them
select concat(first_name, ' ', last_name) as 'Complete Name'from Worker;






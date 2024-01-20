-- Q-16. Write an SQL query to print details of the Workers whose FIRST_NAME contains ‘a’.
select * from worker
where FIRST_NAME like '%a%'; 

-- Q-17. Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘a’.
select * from worker 
where first_name like '%a';

-- Q-18. Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘h’ and contains six alphabets.
select * from worker 
where first_name like '%h' and length(first_name) = 6;

-- OR 

Select * from Worker where FIRST_NAME like '_____h';

-- Q-19. Write an SQL query to print details of the Workers whose SALARY lies between 100000 and 500000.
select * from worker
where salary between 100000 and 500000;

-- Q-20. Write an SQL query to print details of the Workers who joined in Feb 2021.
select * from worker 
where month(Joining_date) = 2 and year(Joining_date) = 2021;
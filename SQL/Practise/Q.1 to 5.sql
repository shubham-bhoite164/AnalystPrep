use org;
select * from worker;

-- Q-1. Write an SQL query to fetch “FIRST_NAME” from the Worker table using the alias name <WORKER_NAME>.
select FIRST_NAME as WORKER_NAME from Worker;

-- Q-2. Write an SQL query to fetch “FIRST_NAME” from the Worker table in upper case.
select upper(FIRST_NAME) from Worker;

-- Q-3. Write an SQL query to fetch unique values of DEPARTMENT from the Worker table.
select distinct DEPARTMENT from Worker;

-- Q-4. Write an SQL query to print the first three characters of  FIRST_NAME from the Worker table.
select substring(FIRST_NAME,1,3) from Worker;

-- Q-5. Write an SQL query to find the position of the alphabet (‘a’) in the first name column ‘Amitabh’ from the Worker table.
SELECT LOCATE('a', FIRST_NAME) AS position_of_a
FROM Worker
WHERE FIRST_NAME = 'Amitabh';

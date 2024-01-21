-- Q-26. Write an SQL query to show only odd rows from a table.
select * from worker
where WORKER_ID%2 != 0;

-- Q-27. Write an SQL query to show only even rows from a table.
select * from worker
where WORKER_ID%2 = 0;

-- Q-28. Write an SQL query to clone a new table from another table.
CREATE TABLE WorkerClone LIKE Worker;

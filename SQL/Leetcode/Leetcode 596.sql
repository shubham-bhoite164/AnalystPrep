-- (student, class) is the primary key (combination of columns with unique values) for this table.
-- Each row of this table indicates the name of a student and the class in which they are enrolled.
--  

-- Write a solution to find all the classes that have at least five students.
-- Return the result table in any order.
-- The result format is in the following example.

with cte as 
(select class, count(*) as subcount
from Courses
group by class)
select class from cte 
where subcount >=5
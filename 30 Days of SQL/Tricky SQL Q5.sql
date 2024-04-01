-- Find the candidates best suited for an open Data Science job. Find candidates who are proficient
-- in Python, SQL, and Power BI.
-- Write a query to list the candidates who possess all of the required skills for the job. Sort the output
-- by candidate ID in ascending order.
use 30daysofsql;

CREATE TABLE Apps(
candidate_id int,
skills varchar(255));

INSERT INTO Apps(candidate_id,skills)
VALUES
(101, 'Power BI'), (101, 'Python'), (101, 'SQL'), (102, 'Tableau'), (102, 'SQL'),
(108, 'Python'), (108, 'SQL'), (108, 'Power BI'), (104, 'Python'), (104, 'Excel');

select candidate_id, count(*) as skill_count
from apps 
group by candidate_id
having count(*) = 3;
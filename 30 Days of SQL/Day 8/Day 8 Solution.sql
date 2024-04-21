use 30daysofsql;
drop table if exists job_skills;
create table job_skills
(
	row_id		int,
	job_role	varchar(20),
	skills		varchar(20)
);
insert into job_skills values (1, 'Data Engineer', 'SQL');
insert into job_skills values (2, null, 'Python');
insert into job_skills values (3, null, 'AWS');
insert into job_skills values (4, null, 'Snowflake');
insert into job_skills values (5, null, 'Apache Spark');
insert into job_skills values (6, 'Web Developer', 'Java');
insert into job_skills values (7, null, 'HTML');
insert into job_skills values (8, null, 'CSS');
insert into job_skills values (9, 'Data Scientist', 'Python');
insert into job_skills values (10, null, 'Machine Learning');
insert into job_skills values (11, null, 'Deep Learning');
insert into job_skills values (12, null, 'Tableau');

select * from job_skills;

-- Solution 1
with cte as(
select *,
sum(case when job_role is null then 0 else 1 end) over(order by row_id) as segment
from job_skills)
select row_id, 
first_value(job_role) over(partition by segment order by row_id) as job_role,
skills 
from cte;


-- Solution 2
with recursive cte as
	(select row_id, job_role, skills
    from job_skills where row_id = 1
    union 
    select job_skills.row_id, coalesce(job_skills.job_role, cte.job_role) as job_role, job_skills.skills
    from cte 
    join job_skills on job_skills.row_id = cte.row_id+1
    )
select * from cte

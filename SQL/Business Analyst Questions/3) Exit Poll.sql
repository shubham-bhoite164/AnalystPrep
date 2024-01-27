--- #3) Election Exit Poll by state report ---

-- DATASET
drop table if exists candidates_tab;
create table candidates_tab
(
    id          int,
    first_name  varchar(50),
    last_name   varchar(50)
);
insert into candidates_tab values(1, 'Davide', 'Kentish');
insert into candidates_tab values(2, 'Thorstein', 'Bridge');

drop table if exists results_tab;
create table results_tab
(
    candidate_id    int,
    state           varchar(50)
);
insert into results_tab values(1, 'Alabama');
insert into results_tab values(1, 'Alabama');
insert into results_tab values(1, 'California');
insert into results_tab values(1, 'California');
insert into results_tab values(1, 'California');
insert into results_tab values(1, 'California');
insert into results_tab values(1, 'California');
insert into results_tab values(2, 'California');
insert into results_tab values(2, 'California');
insert into results_tab values(2, 'New York');
insert into results_tab values(2, 'New York');
insert into results_tab values(2, 'Texas');
insert into results_tab values(2, 'Texas');
insert into results_tab values(2, 'Texas');

insert into results_tab values(1, 'New York');
insert into results_tab values(1, 'Texas');
insert into results_tab values(1, 'Texas');
insert into results_tab values(1, 'Texas');
insert into results_tab values(2, 'California');
insert into results_tab values(2, 'Alabama');

select * from candidates_tab;
select * from results_tab;



-- Solution

SELECT candidate_name,
       GROUP_CONCAT(CASE WHEN rnk = 1 THEN CONCAT(state, ' (', total, ')') END ORDER BY state SEPARATOR ', ') AS `1st_place`,
       GROUP_CONCAT(CASE WHEN rnk = 2 THEN CONCAT(state, ' (', total, ')') END ORDER BY state SEPARATOR ', ') AS `2nd_place`,
       GROUP_CONCAT(CASE WHEN rnk = 3 THEN CONCAT(state, ' (', total, ')') END ORDER BY state SEPARATOR ', ') AS `3rd_place`
FROM (
    SELECT CONCAT(c.first_name, ' ', c.last_name) AS candidate_name,
           state,
           COUNT(1) AS total,
           DENSE_RANK() OVER (PARTITION BY CONCAT(c.first_name, ' ', c.last_name) ORDER BY COUNT(1) DESC) AS rnk
    FROM candidates_tab c
    JOIN results_tab r ON r.candidate_id = c.id
    GROUP BY candidate_name, state
) AS cte
WHERE rnk <= 3
GROUP BY candidate_name;

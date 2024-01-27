--- #2) Advertising System Deviations report ---

-- DATASET
drop table if exists customers;
create table customers
(
    id          int,
    first_name  varchar(50),
    last_name   varchar(50)
);
insert into customers values(1, 'Carolyn', 'O''Lunny');
insert into customers values(2, 'Matteo', 'Husthwaite');
insert into customers values(3, 'Melessa', 'Rowesby');

drop table if exists campaigns;
create table campaigns
(
    id          int,
    customer_id int,
    name        varchar(50)
);
insert into campaigns values(2, 1, 'Overcoming Challenges');
insert into campaigns values(4, 1, 'Business Rules');
insert into campaigns values(3, 2, 'YUI');
insert into campaigns values(1, 3, 'Quantitative Finance');
insert into campaigns values(5, 3, 'MMC');

drop table if exists events;
create table events
(
    campaign_id int,
    status      varchar(50)
);
insert into events values(1, 'success');
insert into events values(1, 'success');
insert into events values(2, 'success');
insert into events values(2, 'success');
insert into events values(2, 'success');
insert into events values(2, 'success');
insert into events values(2, 'success');
insert into events values(3, 'success');
insert into events values(3, 'success');
insert into events values(3, 'success');
insert into events values(4, 'success');
insert into events values(4, 'success');
insert into events values(4, 'failure');
insert into events values(4, 'failure');
insert into events values(5, 'failure');
insert into events values(5, 'failure');
insert into events values(5, 'failure');
insert into events values(5, 'failure');
insert into events values(5, 'failure');
insert into events values(5, 'failure');

insert into events values(4, 'success');
insert into events values(5, 'success');
insert into events values(5, 'success');
insert into events values(1, 'failure');
insert into events values(1, 'failure');
insert into events values(1, 'failure');
insert into events values(2, 'failure');
insert into events values(3, 'failure');

select * from customers;
select * from campaigns;
select * from events;


-- Solution

with cte as (
select concat(first_name, ' ', last_name) as full_name, group_concat(distinct name, ' '), status, count(*) as total,
rank() over(partition by status order by count(1) desc) as rnk
from customers cust
join campaigns camp on cust.id = camp.customer_id
join events eve on camp.id = eve.campaign_id
group by full_name, status
order by status, total desc)
select * from cte
where cte.rnk =1;

use 30daysofsql;

drop table if exists Q4_data;
create table Q4_data
(
	id			int,
	name		varchar(20),
	location	varchar(20)
);
insert into Q4_data values(1,null,null);
insert into Q4_data values(2,'David',null);
insert into Q4_data values(3,null,'London');
insert into Q4_data values(4,null,null);
insert into Q4_data values(5,'David',null);

select * from Q4_data;

select min(id) as id, min(name) as name , min(location) as location from Q4_data;

select max(id) as id, max(name) as name, max(location) as location from Q4_data;
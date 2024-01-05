use cat;


create table marks1(
name varchar(20),
percentages decimal(12,2));   -- DECIMAL(Maximum Digits including the digits after decimal point, Digits after decimal point)


insert into marks1(name,percentages) values('Shubham', 92.4);
select * from marks1;
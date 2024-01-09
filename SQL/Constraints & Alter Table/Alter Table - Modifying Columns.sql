describe marks;

-- Chnage name form varchar(20) to varchar(100)
alter table marks 
modify name varchar(100) default 'Unknown';

select * from marks;
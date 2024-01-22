create database shirts_db;

use cat;
create table shirts1(
 shirt_id int auto_increment,
 article varchar(200),
 color varchar(200),
 shirtsize varchar(1),
 last_worn int,
 primary key (shirt_id)
);

insert into shirts1(article,color,shirtsize,last_worn) 
values('t-shirt', 'white', 'S', 10),
('t-shirt', 'green', 'S', 200),
('polo shirt', 'black', 'M', 10),
('tank top', 'blue', 'S', 50),
('t-shirt', 'pink', 'S', 0),
('polo shirt', 'red', 'M', 5),
('tank top', 'white', 'S', 200),
('tank top', 'blue', 'M', 15);

select * from shirts1;
insert into shirts1(article,color,shirtsize,last_worn) values('polo','purple','M',50);

select article,color from shirts1;

select article,color,shirtsize,last_worn from shirts1 
where shirtsize = 'M';

update shirts1 set shirtsize = 'L'
where article = 'Polo';

update shirts1 set last_worn = 0
where last_worn = 15;

update shirts1 set shirtsize = 'S' and color = 'Off white'
where color = 'white';

delete from shirts1 where last_worn = 200;

delete from shirts1 where article = 'tank top';

delete from shirts1;

Drop table shirts1;


use cat;

create table contacts(
name varchar(100) not null,
phone varchar(15) not null unique
);

insert into contacts(name, phone) 
values('Shubham', '9475840295');

insert into contacts(name, phone) 
values('Vartika', '94758402995');


select * from contacts;
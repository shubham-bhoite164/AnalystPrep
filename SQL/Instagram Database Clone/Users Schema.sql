Create database instagram;
use instagram;

create table users(
id int auto_increment primary key,
username varchar(255) unique not null,
created_at timestamp default now()
);
create table photos(
id int primary key auto_increment,
image_url varchar(255) not null,
user_id int not null,
created_at timestamp default now(),
foreign key (user_id) references users(id)
);
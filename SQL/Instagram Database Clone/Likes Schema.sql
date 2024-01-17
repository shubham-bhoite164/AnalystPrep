create table likes(
user_id int not null,
photo_id int not null,
created_at timestamp default now(),
foreign key (user_id) references users(id),
foreign key (photo_id) references photos(id),
primary key (photo_id,user_id)
);
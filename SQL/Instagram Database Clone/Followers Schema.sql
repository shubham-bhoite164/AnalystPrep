create table follows(
	follower_id int not null,
    followee_id int not null,
    created_at timestamp default now(),
    foreign key (follower_id) references users(id),
	foreign key (followee_id) references users(id),
    primary key(follower_id,followee_id)
);
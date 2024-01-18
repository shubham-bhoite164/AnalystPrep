-- We have a small problem with bots on our site...
-- Find users who have liked every single photo on the site

select username, count(*) as num_likes from users
inner join likes 
	on users.id = likes.user_id
group by likes.user_id
having num_likes = (select count(*) from photos);
-- We're running a new contest to see who can get the most likes on a single photo.
-- WHO WON??!!

select username, photo_id, count(*) as like_count
from likes
inner join photos on photos.id = likes.photo_id
inner join users on photos.user_id = users.id
group by photo_id
order by like_count desc
limit 1
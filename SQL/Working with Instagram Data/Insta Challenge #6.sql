-- A brand wants to know which hashtags to use in a post
-- What are the top 5 most commonly used hashtags?


select tag_name, count(*) as tag_count
from tags
inner join photo_tags on tags.id = photo_tags.tag_id
group by tag_name
order by tag_count desc
limit 5;

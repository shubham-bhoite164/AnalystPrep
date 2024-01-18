-- What day of the week do most users register on?
-- We need to figure out when to schedule an ad campgain

select dayname(created_at) as theday, count(*) as daycount
from users
group by theday
order by daycount desc;

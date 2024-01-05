-- I want solution in (April 11 1985) format
select monthname(birthdate),day(birthdate),year(birthdate) from people;

-- Let's make it more simple using date format function
select date_format(birthdate, '%b') from people; -- %b is for month

SELECT birthdate, DATE_FORMAT(birthdate, '%a %b %D') FROM people; -- 2000-12-25	Mon Dec 25th

SELECT birthdt, DATE_FORMAT(birthdt, 'BORN ON: %r') FROM people; -- 2000-12-25 11:00:00	BORN ON: 11:00:00 AM
select birthdate from people;

-- What if I just want a date
select day(birthdate) from people;

-- What if I want a day of a week 
select dayofweek(birthdate) from people;

-- What if I want a day of the year 
select dayofyear(birthdate) from people;

-- What if I want a name of a month
select monthname(birthdate) from people;

-- What if I want a name of a day
select dayname(birthdate) from people;
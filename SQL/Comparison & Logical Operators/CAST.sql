-- It is used to convert one data type to another data type 
select cast('09:00:00' as time);

-- Print the people who were born between 12pm and 4pm
select * from people where birthtime
between cast('12:00:00' as time) and cast('16:00:00' as time);
-- Only few views are updatable 
-- for example 


-- Here we created a view
create view ordered_series as 
select * from series order by released_year;

select * from ordered_series;


-- Updating the views 
insert into ordered_series (title, released_year, genre)
values('The Great', 2024, 'Comedy');

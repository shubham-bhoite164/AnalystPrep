-- (sale_id, year) is the primary key (combination of columns with unique values) of this table.
-- product_id is a foreign key (reference column) to Product table.
-- Each row of this table shows a sale on the product product_id in a certain year.
-- Note that the price is per unit.

-- Write a solution to select the product id, year, quantity, and price for the first year of every product sold.
-- Return the resulting table in any order.
-- The result format is in the following example.-- 

select product_id, year as first_year,quantity, price
from sales
where (product_id, year) in (
select product_id, min(year) 
from Sales
group by product_id)

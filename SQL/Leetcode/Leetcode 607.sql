-- Write a solution to find the names of all the salespersons who did not have any orders related to 
-- the company with the name "RED".

select s.name from SalesPerson s
where sales_id not in (
    select o.sales_id from Company c
    join Orders o on c.com_id = o.com_id
    where c.name = 'Red'
);
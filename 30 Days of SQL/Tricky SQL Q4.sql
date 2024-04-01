-- Find monthly sales and sort it by desc order

use 30daysofsql;
CREATE TABLE Products (
Order_date date,
Sales int );

INSERT INTO Products(Order_date,Sales)
VALUES
('2021-01-01',20), ('2021-01-02',32), ('2021-02-08',45), ('2021-02-04',31),
('2021-03-21',33), ('2021-03-06',19), ('2021-04-07',21), ('2021-04-22',10);

select * from products;

select month(Order_date), year(Order_date), sum(sales)
from products
group by month(Order_date),year(Order_date)
order by sum(sales) desc;
use 30daysofsql;
drop TABLE if exists orders;
CREATE TABLE ord
(
	customer_id 	INT,
	dates 			DATE,
	product_id 		INT
);
INSERT INTO ord VALUES
(1, '2024-02-18', 101),
(1, '2024-02-18', 102),
(1, '2024-02-19', 101),
(1, '2024-02-19', 103),
(2, '2024-02-18', 104),
(2, '2024-02-18', 105),
(2, '2024-02-19', 101),
(2, '2024-02-19', 106); 


select * from ord;


SELECT dates, product_id
FROM ord
UNION
SELECT dates, GROUP_CONCAT(product_id SEPARATOR ',') AS products
FROM ord
GROUP BY customer_id, dates
order by dates, product_id;



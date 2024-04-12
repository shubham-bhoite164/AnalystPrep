use 30daysofsql;
DROP TABLE IF EXISTS FOOTER;
CREATE TABLE FOOTER 
(
	id 			INT PRIMARY KEY,
	car 		VARCHAR(20), 
	length 		INT, 
	width 		INT, 
	height 		INT
);

INSERT INTO FOOTER VALUES (1, 'Hyundai Tucson', 15, 6, NULL);
INSERT INTO FOOTER VALUES (2, NULL, NULL, NULL, 20);
INSERT INTO FOOTER VALUES (3, NULL, 12, 8, 15);
INSERT INTO FOOTER VALUES (4, 'Toyota Rav4', NULL, 15, NULL);
INSERT INTO FOOTER VALUES (5, 'Kia Sportage', NULL, NULL, 18); 

SELECT * FROM FOOTER;

select * from (
select car from FOOTER
where car is not null 
order by id desc
limit 1) as car
cross join (
select length from FOOTER
where length is not null 
order by id desc
limit 1) as length
cross join (
select width from FOOTER
where width is not null 
order by id desc
limit 1) as width
cross join (
select height from FOOTER
where height is not null 
order by id desc
limit 1) as height


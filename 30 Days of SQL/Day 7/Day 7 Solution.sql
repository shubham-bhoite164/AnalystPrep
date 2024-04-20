use 30daysofsql;
drop table if exists Day_Indicator;
create table Day_Indicator
(
	Product_ID 		varchar(10),	
	Day_Indicator 	varchar(7),
	Dates			date
);
INSERT INTO Day_Indicator (Product_ID, Day_Indicator, Dates)
VALUES 
    ('AP755', '1010101', STR_TO_DATE('04-Mar-2024', '%d-%b-%Y')),
    ('AP755', '1010101', STR_TO_DATE('05-Mar-2024', '%d-%b-%Y')),
    ('AP755', '1010101', STR_TO_DATE('06-Mar-2024', '%d-%b-%Y')),
    ('AP755', '1010101', STR_TO_DATE('07-Mar-2024', '%d-%b-%Y')),
    ('AP755', '1010101', STR_TO_DATE('08-Mar-2024', '%d-%b-%Y')),
    ('AP755', '1010101', STR_TO_DATE('09-Mar-2024', '%d-%b-%Y')),
    ('AP755', '1010101', STR_TO_DATE('10-Mar-2024', '%d-%b-%Y')),
    ('XQ802', '1000110', STR_TO_DATE('04-Mar-2024', '%d-%b-%Y')),
    ('XQ802', '1000110', STR_TO_DATE('05-Mar-2024', '%d-%b-%Y')),
    ('XQ802', '1000110', STR_TO_DATE('06-Mar-2024', '%d-%b-%Y')),
    ('XQ802', '1000110', STR_TO_DATE('07-Mar-2024', '%d-%b-%Y')),
    ('XQ802', '1000110', STR_TO_DATE('08-Mar-2024', '%d-%b-%Y')),
    ('XQ802', '1000110', STR_TO_DATE('09-Mar-2024', '%d-%b-%Y')),
    ('XQ802', '1000110', STR_TO_DATE('10-Mar-2024', '%d-%b-%Y'));


select * from Day_Indicator;

SELECT 
    product_id, 
    day_indicator, 
    dates
FROM (SELECT *, DAYOFWEEK(dates) as dow,
        CASE 
            WHEN MID(day_indicator, DAYOFWEEK(dates), 1) = '1' THEN 'Include'
            ELSE 'Exclude'
        END AS flag
    FROM Day_Indicator
) AS x
WHERE flag = 'Include';



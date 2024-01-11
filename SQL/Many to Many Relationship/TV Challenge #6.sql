-- Make below thing happen 

-- +------------+-----------+-------+-----+-----+---------+----------+
-- | first_name | last_name | COUNT | MIN | MAX | AVG     | STATUS   |
-- +------------+-----------+-------+-----+-----+---------+----------+
-- | Thomas     | Stoneman  |     5 | 7.0 | 9.5 | 8.02000 | ACTIVE   |
-- | Wyatt      | Skaggs    |     9 | 5.5 | 9.3 | 7.80000 | ACTIVE   |
-- | Kimbra     | Masters   |     9 | 6.8 | 9.0 | 7.98889 | ACTIVE   |
-- | Domingo    | Cortes    |    10 | 5.8 | 9.1 | 7.83000 | ACTIVE   |
-- | Colt       | Steele    |    10 | 4.5 | 9.9 | 8.77000 | ACTIVE   |
-- | Pinkie     | Petit     |     4 | 4.3 | 8.8 | 7.25000 | ACTIVE   |
-- | Marlon     | Crafford  |     0 | 0.0 | 0.0 | 0.00000 | INACTIVE |
-- +------------+-----------+-------+-----+-----+---------+----------+

select first_name,
    last_name,
    COUNT(rating) AS count,
    IFNULL(MIN(rating), 0) AS min,
    IFNULL(MAX(rating), 0) AS max,
    IFNULL(AVG(rating), 0) AS average,
case
	WHEN COUNT(rating) >= 10 THEN 'POWERUSER'
        WHEN COUNT(rating) > 0 THEN 'ACTIVE'
        ELSE 'INACTIVE'
end as STATUS
From reviewers
left join reviews on reviewers.id = reviews.reviewer_id
group by first_name,last_name;
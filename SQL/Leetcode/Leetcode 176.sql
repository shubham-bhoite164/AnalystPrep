-- Write a solution to find the second highest salary from the Employee table. 
-- If there is no second highest salary, return null (return None in Pandas).

SELECT 
    CASE
        WHEN EXISTS (SELECT 1 FROM employee WHERE salary IS NOT NULL) THEN
            (SELECT 
                CASE
                    WHEN MAX(salary) = (SELECT MAX(salary) FROM employee) THEN NULL
                    ELSE MAX(salary)
                END
            FROM employee WHERE salary < (SELECT MAX(salary) FROM employee))
        ELSE NULL
    END AS SecondHighestSalary;

-- Another One
SELECT MAX(salary) AS SecondHighestSalary
FROM Employee 
WHERE Salary < (SELECT MAX(salary) FROM Employee);

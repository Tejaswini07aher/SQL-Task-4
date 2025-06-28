
-- 1. Apply aggregate functions on numeric columns
-- 2. Use GROUP by to categorize
-- 3. Filter Groups using HAVING 

-- 1.Apply Aggregate functions on numeric columns(salary, experience)
-- 2.Use GROUP BY to categorize by department
-- 3.Use having to filter departments with average salary greater than 50000

SELECT 
Department,
COUNT(*) AS total_employees,
AVG(salary) AS average_salary,
SUM(experience ) AS total_experience
FROM
   Employees
GROUP BY
  Department
HAVING
  AVG(salary)> 50000;
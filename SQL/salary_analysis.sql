-- Salary Analysis:

-- Q1. What is the average salary overall?

SELECT 
  AVG(salary) AS Average_Salary 
FROM 
  employees;
  
-- Q2. What is the average salary by Department?

SELECT 
  department, 
  AVG(salary) AS Average_salary 
FROM 
  employees 
GROUP BY 
  department;
  
-- Q3. Which department has highest average salary?

SELECT 
  department, 
  AVG(salary) AS Average_salary 
FROM 
  employees 
GROUP BY 
  department 
ORDER BY 
  Average_salary DESC LIMIT 1;
  
-- Q4. What is the highest and lowest salary?

SELECT 
  MAX(salary) AS Maximum_salary, 
  MIN(salary) AS Minimum_salary 
FROM 
  employees;

-- Q5. Which departments have an average salary above the company-wide averages?

SELECT 
  department, 
  AVG(salary) AS Average_Department_Salary
FROM
  employees 
GROUP BY
  department 
HAVING 
  Average_Department_Salary>(
    SELECT 
      AVG(salary) 
    FROM
      employees
  ) 
ORDER BY 
  AVG(salary) DESC;
  
-- Q6. How many employee(s) earn more than the average company salary:

SELECT 
  COUNT(*) AS number_of_employees,
  CAST(
  (COUNT(*)/(SELECT COUNT(*) FROM employees))*100 AS DECIMAL(10,0)
  ) AS percentage
FROM
  employees 
WHERE
  salary > (
    SELECT 
      avg(salary) 
    FROM
      employees
  );




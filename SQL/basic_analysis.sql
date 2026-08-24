-- Basic Analysis

-- Q1. How many employees are there?

SELECT 
  COUNT(*) AS number_of_employees 
FROM 
  employees;
  
-- Q2. How many employees are there in each department?

SELECT 
  department, 
  count(*) AS number_of_employees 
FROM 
  employees 
GROUP BY 
  department;
  
-- Q3.  How many employees are there in every city?

SELECT 
  DISTINCT(city) AS Cities, 
  COUNT(*) AS number_of_employees 
FROM 
  employees 
GROUP BY 
  Cities;
  
-- Q4. What are different education levels?

SELECT 
  education
FROM 
  employees 
GROUP BY 
  education;
  
-- Q5. Give the distribution of employees by their education level?

SELECT
  education,
  COUNT(*) AS number_of_employees
FROM
  employees
GROUP BY
  education;

-- Q6.How many employees are there in each payment tier?

SELECT 
  paymenttier, 
  COUNT(*) AS Num_of_employee 
FROM 
  employees 
GROUP BY 
  paymenttier;

-- Q7. Which city have the most employees?

SELECT 
  DISTINCT(city) AS Cities, 
  (COUNT(*)) AS number_of_employees 
FROM 
  employees
GROUP BY
  Cities
HAVING
  COUNT(*)=(
    SELECT COUNT(*) 
	FROM employees
    GROUP BY city
	ORDER BY COUNT(*) DESC
    LIMIT 1		
  );

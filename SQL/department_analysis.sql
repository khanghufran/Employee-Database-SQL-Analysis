-- Department Analysis:

--  Q1. How many departments are there?

SELECT
  COUNT(DISTINCT(department)) AS number_of_departments
FROM
  employees;

-- Q2. List down all departments working in the company?

SELECT
  DISTINCT(department) AS departments
FROM
  employees;

-- Q3. What is the average age by department?

SELECT 
  department, 
  CAST(
    AVG(age) AS DECIMAL(10, 0)
  ) AS Average_age 
FROM 
  employees 
GROUP BY 
  department;

-- Q4. How many employees are in different payment tier in each department?

SELECT
  department,
  paymenttier,
  COUNT(*) AS number_of_employees
FROM
  employees
GROUP BY
  department,
  paymenttier
ORDER BY
  department ASC,
  paymenttier;


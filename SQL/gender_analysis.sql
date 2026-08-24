-- Gender Analysis:

-- Q1. What is the distribution of Gender?

SELECT
  COUNT(*) AS number_of_employees,
  gender
FROM
  employees
GROUP BY
  gender;

-- Q2. What is the average salary of every gender?

SELECT
  gender,
  AVG(salary) AS average_salary
FROM
  employees
GROUP BY
  gender;

-- Q3. What is the gender distribution by department?

SELECT       										
  department, 
  gender, 
  COUNT(*) AS Number_of_employees 
FROM 
  employees 
GROUP BY
  department,
  gender
ORDER BY
  department ASC,
  gender;

-- Q4. What is the gender distribution by payment tier?

SELECT       										
  paymenttier, 
  gender, 
  COUNT(*) AS Number_of_employees 
FROM 
  employees 
GROUP BY
  paymenttier,
  gender
ORDER BY
  paymenttier ASC,
  gender;

-- Q5. What is the gender distribution by education?

SELECT       										
  education, 
  gender, 
  COUNT(*) AS Number_of_employees 
FROM 
  employees 
GROUP BY
  education,
  gender
ORDER BY
  education ASC,
  gender;

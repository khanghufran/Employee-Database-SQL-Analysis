# Employee Database SQL Analysis

## Project Overview

This project uses SQL to query and analyze an employee dataset and answer a series of workforce-related business questions.

The analysis focuses on employee headcount, departmental distribution, education, payment tiers, salary patterns, and gender distribution.

The project demonstrates the use of SQL aggregation, filtering, grouping, subqueries, and basic analytical queries to extract information from structured employee data.

## Objective

The main objectives were to:

- Determine total employee headcount.
- Analyze employee distribution by department and city.
- Analyze education levels and payment tiers.
- Calculate average salaries.
- Identify departments with higher average salaries than the company-wide average.
- Identify the department with the highest average salary.
- Identify employees earning above the overall average salary.
- Analyze gender distribution across departments, payment tiers, and education levels.

## Dataset Overview

The dataset contains **4,653 employee records**.

Fields include:

- ID
- Name
- Gender
- Age
- Education
- City
- JoiningYear
- Department
- PaymentTier
- Salary

## SQL Analysis

The SQL queries are organized into four analysis areas.

### 1. Basic Analysis

The basic analysis includes queries for:

- Total number of employees
- Employee count by department
- Employee count by city
- Education levels
- Employee distribution by education
- Employee distribution by payment tier
- City-level employee distribution

### 2. Department Analysis

Department-level analysis includes:

- Number of departments
- List of departments
- Average employee age by department
- Employee distribution by payment tier within each department

The dataset contains **10 departments**.

### 3. Salary Analysis

Salary analysis includes:

- Overall average salary
- Average salary by department
- Highest average salary by department
- Maximum salary
- Minimum salary
- Departments with average salary above the company-wide average
- Number and percentage of employees earning above the company-wide average

The overall average salary is approximately:

**101,229.89**

The highest recorded salary is:

**120,000**

The lowest recorded salary is:

**40,000**

A total of **2,991 employees**, approximately **64% of the dataset**, earn more than the overall average salary.

The department with the highest average salary is:

**Sales — approximately 102,402.79**

### 4. Gender Analysis

Gender analysis includes:

- Overall gender distribution
- Average salary by gender
- Gender distribution by department
- Gender distribution by payment tier
- Gender distribution by education level

The dataset contains:

| Gender | Employees |
|---|---:|
| Female | 2,141 |
| Male | 1,753 |
| Others | 759 |

## SQL Techniques Used

The project demonstrates the use of:

- `SELECT`
- `COUNT()`
- `COUNT(DISTINCT)`
- `AVG()`
- `MAX()`
- `MIN()`
- `WHERE`
- `GROUP BY`
- `ORDER BY`
- `HAVING`
- Subqueries
- Type casting
- Aggregate functions
- Grouped analysis
- Structured data analysis

## Example Business Questions

Some of the questions answered through SQL include:

```text
How many employees are in the company?

How many employees work in each department?

What is the distribution of employees by education level?

What is the average salary by department?

Which department has the highest average salary?

Which departments have an average salary above the company-wide average?

How many employees earn more than the company-wide average salary?

What is the gender distribution across departments?
```


## Key Findings

The analysis produced several workforce-related findings, including:

- 4,653 employees are present in the dataset.
- The dataset contains 10 departments.
- The overall average salary is approximately 101,229.89.
- Sales has the highest average salary among departments.
- 2,991 employees earn more than the overall average salary.
- Employee gender, education, department, and payment-tier distributions can be examined through grouped SQL analysis.
  

## Tools Used

- SQL
- Relational database concepts
   
## Repository Structure

```text
Employee-Database-SQL-Analysis/
│
├── README.md
│
├── Data/
│   └── Employees.csv
│
├── SQL/
│   ├── basic_analysis.sql
│   ├── department_analysis.sql
│   ├── gender_analysis.sql
│   └── salary_analysis.sql
│
├── Results/
│   └── query_result.xlsx
│
└── Screenshots/
    └── query_results_overview.png
```

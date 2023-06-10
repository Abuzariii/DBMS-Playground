-- Create an employees table
CREATE TABLE employees (
  employee_id SERIAL PRIMARY KEY,
  department VARCHAR(50),
  gender VARCHAR(10),
  salary NUMERIC(10, 2)
);


-- Insert data into it
INSERT INTO employees (department, gender, salary)
SELECT
  CASE 
    WHEN random() < 0.25 THEN 'IT'
    WHEN random() < 0.5 THEN 'Sales'
    WHEN random() < 0.75 THEN 'Marketing'
    ELSE 'HR'
  END,
  CASE WHEN random() < 0.5 THEN 'Male' ELSE 'Female' END,
  CAST((random() * 50000 + 40000) AS numeric(10, 2))
FROM generate_series(1, 200);

select * from employees;

-- Group by departments based on average salary if its more than 5000
SELECT department, AVG(salary) AS average_salary
FROM employees
GROUP BY department
HAVING AVG(salary) > 50000;

-- Group by departments based on average salary
SELECT department, AVG(salary) AS average_salary
FROM employees
GROUP BY department;



















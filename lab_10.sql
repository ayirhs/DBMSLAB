--1. Create a report that displays the employee number, last name, and salary of all employees 
--who earn more than the average salary. Sort the results in ascending order by salary. 
--2. Write a query that displays the employee number and last name of all employees who work 
--in a department with any employee whose last name contains a u. 
--3. The HR department needs a report that displays the last name, department number, job id 
--of all employees whose department location id is 1700.
--4. Create a report for the HR department that displays the last name and salary of every 
--employee who reports to King.

SELECT employee_id, last_name, salary
FROM employees
WHERE salary > (SELECT AVG(salary) FROM employees)
ORDER BY salary ASC;

SELECT employee_id, last_name
FROM employees
WHERE department_id IN (
  SELECT department_id
  FROM employees
  WHERE last_name LIKE '%u%'
);

SELECT e.last_name, e.department_id, e.job_id
FROM employees e
JOIN departments d ON e.department_id = d.department_id
WHERE d.location_id = 1700;

SELECT e.last_name, e.salary
FROM employees e
JOIN employees m ON e.manager_id = m.employee_id
WHERE m.last_name = 'King';




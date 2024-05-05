--1. Because of budget issues, the HR department needs a report that displays the last name and salary employees earning more than 
--    $12,000.
--2. Write a query that displays the last name and department number for employee number 176.
--3. Run a query to display the last name, job ID, and start date for the employees whose last names are Matos and Taylor. Order 
--    the query in ascending order by start date.
--4. Display the last name and department number of all employees in departments 20 or 50 in ascending alphabetical order by name.
--5. Modify task_2_3 to list the last name and salary of employees who earn between $5,000 and $12,000 and are in department 20 or 50.
--    Label the columns Employee and Monthly salary, respectively.
--6. The HR department needs a report that displays the last name and hire date for all employees who were hired in 1994.
--7. Display the last name and job title of all employees who do not have a manager.
--8. Display the last name, salary and commission for all employees who earn commissions. sort data in descending order of salary and 
--    commissions.
--9. Display all employee last names in which the third letter of the name is a.
--10. Display the last names of all employees who have both an a and e in their last names.
--11. Display the last name, job and salary for all employees whose job is either that of a sales representative (SA_REP) or a 
--    stock clerk (ST_CLERK), and whose salary is not equal to $2,500, $3,500, or $7,000.
--12. Modify lab_02_06.sql to display the last name, salary and commission for all employees whose commission amount is 20%.

SELECT last_name, salary
FROM employees
WHERE salary > 12000;

SELECT last_name, department_id
FROM employees 
WHERE employee_id = 176;

SELECT last_name, job_id, hire_date
FROM employees
WHERE last_name IN ('Matos', 'Taylor')
ORDER BY hire_date ASC;

SELECT last_name, department_id
FROM employees
WHERE department_id IN (20, 50)
ORDER BY last_name ASC;

SELECT last_name AS Employee, salary AS "Monthly salary", department_id
FROM employees
WHERE (salary BETWEEN 5000 AND 12000) AND (department_id IN (20, 50));

SELECT last_name, hire_date
FROM employees
WHERE hire_date BETWEEN TO_DATE('1994-01-01', 'YYYY-MM-DD') AND TO_DATE('1994-12-31', 'YYYY-MM-DD');

SELECT last_name, job_id
FROM employees
WHERE manager_id IS NULL;

SELECT last_name, salary, commission_pct
FROM employees
WHERE commission_pct IS NOT NULL
ORDER BY salary DESC, commission_pct DESC;

SELECT last_name
FROM employees
WHERE SUBSTR(last_name, 3, 1) = 'a';

SELECT last_name
FROM employees
WHERE last_name LIKE '%a%' AND last_name LIKE '%e%';

SELECT last_name, job_id, salary
FROM employees
WHERE job_id IN ('SA_REP', 'ST_CLERK')
AND salary NOT IN (2500, 3500, 7000);

SELECT last_name, salary, commission_pct
FROM employees
WHERE commission_pct = 0.20;












--1. Determine the structure of DEPARTMENTS table and contents.
--2. Determine the structure of Employees table.
--3. The HR department wants a query to display the last name, job code, hire date and employee number for each employee, with the 
--    employee number appearing first. Provide an alias STARTDATE for the HIRE_DATE column.
--4. The HR department needs a query to display all unique job codes from the EMPLOYEES table.
--5. The HR department wants more descriptive column heading for its report on employees. Modify the Task_1_3 to Name the 
--    column heading EMP #, Employee, Job and Hire Date, respectively.
--6. The HR department has requested a report of all employees and their job IDs. Display the last name concatenated 
--    with the job ID (Separated by a comma and space) and name the column Employee and Title.

DESCRIBE DEPARTMENTS;
SELECT * FROM DEPARTMENTS;

DESCRIBE EMPLOYEES;

SELECT employee_id AS "EMP #",
       last_name AS "Employee",
       job_id AS "Job",
       hire_date AS "Start Date"
FROM employees;

SELECT DISTINCT job_id 
FROM employees;

SELECT employee_id AS "EMP #",
       last_name AS "Employee",
       job_id AS "Job",
       hire_date AS "Hire Date"
FROM employees;

SELECT last_name || ', ' || job_id AS "Employee and Title"
FROM employees;




--1. The staff in the HR department wants to hide some of the data in the EMPLOYEES table.
--They want a view called EMPLOYEES_VU based on the employee numbers, employee
--last names, and department numbers from the EMPLOYEES table. They want the heading
--for the employee name to be EMPLOYEE.
-- 2.Confirm that the view works. Display the contents of the EMPLOYEE_VU view
-- 3. Using your EMPLOYEE_VU view, write a query for the HR department to display all 
--employee names and department numbers.
-- 4. Create synonyms emp for employees table
-- 5. Confirm that the synonyms work. Display the contents of the emp table using recently 
-- created synonyms.

CREATE OR REPLACE VIEW employees_vu AS
SELECT employee_id, last_name employee, department_id
FROM employees;

SELECT * FROM employees_vu;

SELECT employee, department_id
FROM employees_vu;

CREATE SYNONYM emps FOR employees;

SELECT * FROM emps;

--1. Write a query for the HR department to produce the addresses of all the departments. Use 
--the LOCATIONS and COUNTRIES tables. Show the location Id, street address, city, state 
--or province and country in the output. Using inner join.
--2. The HR department need a report of all employees. Write a query to display the last name, 
--department number, and department name for all employees.
--3. The HR department needs a report of employees in Toronto. Display the last name, job, 
--department number, department name and city for all employees who work in Toronto.

SELECT 
    l.location_id AS "Location ID",
    l.street_address AS "Street Address",
    l.city AS "City",
    l.state_province AS "State/Province",
    c.country_name AS "Country"
FROM 
    locations l
INNER JOIN 
    countries c ON l.country_id = c.country_id;
    
SELECT 
    e.last_name,
    d.department_id,
    d.department_name
FROM 
    employees e
JOIN 
    departments d ON e.department_id = d.department_id;
    
SELECT 
    e.last_name,
    e.job_id AS "Job",
    e.department_id,
    d.department_name,
    l.city
FROM 
    employees e
JOIN 
    departments d ON e.department_id = d.department_id
JOIN 
    locations l ON d.location_id = l.location_id
WHERE 
    l.city = 'Toronto';



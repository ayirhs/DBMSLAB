--1. Using CASE function, write a query that displays the grade of all employees based on the value of the column JOB_ID, 
--    using the following data:
--    Job                 Grade
--    AD_PRES             A
--    ST_MAN              B
--    IT_PROG             C
--    SA_REP              D
--    ST_CLERK            E
--    None of the above   0

SELECT 
--    employee_id,
--    last_name,
    job_id,
    CASE 
        WHEN job_id = 'AD_PRES' THEN 'A'
        WHEN job_id = 'ST_MAN' THEN 'B'
        WHEN job_id = 'IT_PROG' THEN 'C'
        WHEN job_id = 'SA_REP' THEN 'D'
        WHEN job_id = 'ST_CLERK' THEN 'E'
        ELSE '0'
    END AS Grade
FROM employees;

-- INNER JOIN

SELECT e.employee_id,
       e.employee_name,
       d.department_name
FROM employees e
INNER JOIN departments d
ON e.department_id = d.department_id;


-- LEFT JOIN

SELECT e.employee_id,
       e.employee_name,
       d.department_name
FROM employees e
LEFT JOIN departments d
ON e.department_id = d.department_id;


-- RIGHT JOIN

SELECT e.employee_id,
       e.employee_name,
       d.department_name
FROM employees e
RIGHT JOIN departments d
ON e.department_id = d.department_id;


-- FULL OUTER JOIN

SELECT e.employee_id,
       e.employee_name,
       d.department_name
FROM employees e
FULL OUTER JOIN departments d
ON e.department_id = d.department_id;

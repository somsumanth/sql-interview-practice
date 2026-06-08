-- Scalar Subquery

SELECT employee_name,
       salary
FROM employees
WHERE salary > (
    SELECT AVG(salary)
    FROM employees
);

-- Single Row Subquery

SELECT employee_name,
       salary
FROM employees
WHERE salary = (
    SELECT MAX(salary)
    FROM employees
);

-- Correlated Subquery

SELECT e1.employee_name,
       e1.salary
FROM employees e1
WHERE salary > (
    SELECT AVG(e2.salary)
    FROM employees e2
    WHERE e1.department_id = e2.department_id
);

-- EXISTS

SELECT department_name
FROM departments d
WHERE EXISTS (
    SELECT 1
    FROM employees e
    WHERE e.department_id = d.department_id
);

-- NOT EXISTS

SELECT department_name
FROM departments d
WHERE NOT EXISTS (
    SELECT 1
    FROM employees e
    WHERE e.department_id = d.department_id
);

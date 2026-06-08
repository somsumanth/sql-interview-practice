-- Common Table Expression (CTE)

WITH EmployeeSalary AS (
    SELECT employee_id,
           employee_name,
           salary
    FROM employees
)
SELECT *
FROM EmployeeSalary;

-- Department Wise Average Salary

WITH AvgSalary AS (
    SELECT department_id,
           AVG(salary) AS avg_salary
    FROM employees
    GROUP BY department_id
)
SELECT *
FROM AvgSalary;

-- Employees Above Department Average

WITH DeptAvg AS (
    SELECT department_id,
           AVG(salary) AS avg_salary
    FROM employees
    GROUP BY department_id
)
SELECT e.employee_id,
       e.employee_name,
       e.salary
FROM employees e
JOIN DeptAvg d
ON e.department_id = d.department_id
WHERE e.salary > d.avg_salary;

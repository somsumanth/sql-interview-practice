-- ROW_NUMBER

SELECT employee_id,
       employee_name,
       salary,
       ROW_NUMBER() OVER(ORDER BY salary DESC) AS row_num
FROM employees;

-- RANK

SELECT employee_id,
       employee_name,
       salary,
       RANK() OVER(ORDER BY salary DESC) AS rank_num
FROM employees;

-- DENSE_RANK

SELECT employee_id,
       employee_name,
       salary,
       DENSE_RANK() OVER(ORDER BY salary DESC) AS dense_rank_num
FROM employees;

-- LEAD

SELECT employee_id,
       salary,
       LEAD(salary) OVER(ORDER BY salary) AS next_salary
FROM employees;

-- LAG

SELECT employee_id,
       salary,
       LAG(salary) OVER(ORDER BY salary) AS previous_salary
FROM employees;

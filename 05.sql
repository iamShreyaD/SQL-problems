Tables:
Employees(emp_id, emp_name, dept_id)
Departments(dept_id, dept_name, location)

👉 Question:
Find the employee names who work in departments located in 'New York'.

SELECT emp_name
FROM Employees
WHERE dept_id IN (
    SELECT dept_id
    FROM Departments
    WHERE location = 'New York'
);

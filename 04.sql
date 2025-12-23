Table: Employees
Employees(emp_id, emp_name, salary)

👉 Question:
Find the names of employees whose salary is greater than the average salary.

select emp_name, salary 
  from Employees 
  where salary > (select AVG(salary) from Employees);

You are given 3 tables namely ‘Students’ , ‘Departments’ and ‘Jobs’.

Write an SQL query to find sum of Distinct salaries obtained by students from ‘CSE’ department. The output should be sorted by the Department names.

select sum(distinct j.Salary) Salary
from 
    Students s,
    Departments d,
    Jobs j
where 
    s.DepartmentId = d.DepartmentId
    and s.Id = j.Id
    and d.DepartmentName = 'CSE'
GROUP BY d.DepartmentName
ORDER BY d.DepartmentName;

Given 2 tables ‘Students’ and ‘Departments’. Write an SQL query to find the students who has the Lowest GPA in each of the departments. 

select CONCAT(d.DepartmentName, ",", s.Name, ",", s.GPA) A
from Students s
left join Departments d on s.DepartmentId = d.DepartmentId
where s.GPA = (
    select min(GPA) 
    from Students 
    where Students.DepartmentId = s.DepartmentId
)
order by d.DepartmentName
;

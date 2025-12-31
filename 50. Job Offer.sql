You are given 3 tables namely ‘Students’ , ‘Departments’ and ‘Jobs’.

Write an SQL query to find for each student their name and the date of the job offer. The output should be sorted by Department Names. Note that there might be students who did not receive a single offer, in such cases you should not include them in the output table.

SELECT CONCAT(s.Name, ",", j.Date) AS Offers
FROM Departments d
JOIN Students s on d.DepartmentId = s.DepartmentId
LEFT JOIN Jobs j on s.Id = j.Id
WHERE j.Date IS NOT NULL
ORDER BY d.DepartmentName
;

A university has started a student-advisor plan which assigns a professor as an advisor to each student for academic guidance. Write a query to find the roll number and names of students who either have a male advisor with a salary of more than 15000 or a female advisor of more than 20000.

SELECT s.roll_number, s.name
FROM student_information s
JOIN faculty_information f on s.advisor = f.employee_id
WHERE (f.gender = 'M' AND f.salary > 15000) 
    OR (f.gender = 'F' AND f.salary > 20000)
;

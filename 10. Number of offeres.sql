Given 2 tables ‘Students’ and ‘Jobs’, write an SQL query to find for every student the number of offers they got in the month of November. The output should contain 1 coloumn by the name ‘Job_Offers’ which should contain the number of jobs received by each of the student in the month of November. Also it should be sorted by the Id of the students.

select 
    SUM(CASE WHEN MONTH(j.Date) = 11 THEN 1 ELSE 0 END) AS Job_Offers
from Students s 
left join Jobs j on s.Id = j.Id
GROUP BY s.ID
order by s.Id;

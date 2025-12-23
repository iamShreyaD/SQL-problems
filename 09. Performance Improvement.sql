You are given a table having the marks of one student in every test (Tests are held every day). You have to output the tests in which the student has improved his performance. For a student to improve his performance he has to score more than the previous test. Given that TestIDs are in increasing order, forming a continuous sequence without any missing numbers.

/* YOUR QUERY GOES HERE
   Example: SELECT * FROM EMPLOYEE; 
   Identify where marks are greater than previous marks
*/
SELECT t2.TestId
FROM Tests t1
JOIN Tests t2 on t1.TestId + 1= t2.TestId
where t1.Marks < t2.Marks;

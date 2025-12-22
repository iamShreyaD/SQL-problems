Given a table STUDY, update the marks of all the students to 50, whose marks lie in the range 25 - 50 (excluding 25 , including 50 i.e. (25,50] ) . Then print the new table.

update STUDY
set Marks = 50
where Marks BETWEEN 26 AND 50;
SELECT *
FROM STUDY;

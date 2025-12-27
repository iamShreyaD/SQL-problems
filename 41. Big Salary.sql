Given a table WORKERS, find how many workers have the maximum total earnings among all the workers.

The total earnings of a worker is calculated as Daily Wage * Number of Days Worked.

SELECT COUNT(*) AS A 
FROM WORKERS
WHERE (DailyWage * DaysWorked) = (
    SELECT MAX(DailyWage * DaysWorked)
    FROM WORKERS)
;

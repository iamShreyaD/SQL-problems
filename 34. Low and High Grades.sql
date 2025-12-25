Given 2 tables EMPLOYEE and EVALUATION, query for the count of names whose Rating is less than 3. Also, query for the count of names whose Rating is greater than 8.

SELECT COUNT(e.Name) as `COUNT(Name)`
from EMPLOYEE e 
join EVALUATION ev on e.Points BETWEEN ev.Lower and ev.Upper
where ev.rating < 3;
;

SELECT
    count(e.Name) as `COUNT(Name)`
from EMPLOYEE e 
join EVALUATION ev on e.Points BETWEEN ev.Lower and ev.Upper
where ev.rating > 8;

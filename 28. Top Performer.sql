Given 2 tables EMPLOYEE and EVALUATION, build a report containing the 2 columns, Name and Rating. Employees with Ratings less than 6 should appear as NULL in the table. The entries in the table should be sorted by descending order of Rating, followed by Names in lexicographic order.

SELECT 
    (CASE WHEN ev.Rating < 6 THEN NULL ELSE e.Name END) Names,
    ev.Rating
FROM EMPLOYEE e 
join EVALUATION ev on e.Points BETWEEN ev.Lower AND ev.Upper
order by ev.Rating desc, e.Name asc
;

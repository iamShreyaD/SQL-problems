Given a table LABOURERS, match all the pairs of Labourers that are from the same country, along with the country name. Keep the ordering by Name of the first laborer, then second laborer, and then Country name.

SELECT 
    l1.Name as Labourer1,
    l2.Name as Labourer2,
    l1.Country as Country
from LABOURERS l1
JOIN LABOURERS l2 on l1.ID = l2.ID and l1.Country <> l2.Country
ORDER BY 
    l1.Name, 
    l2.Name, 
    l1.Country
;

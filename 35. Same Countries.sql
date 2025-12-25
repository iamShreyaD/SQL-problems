Given a table LABOURERS, match all the pairs of Labourers that are from the same country, along with the country name. Keep the ordering by Name of the first laborer, then second laborer, and then Country name. The output format should be like this:

Where Labourer1 and Labourer2 come from the same country.


SELECT
    l1.Name AS Labourer1,
    l2.Name AS Labourer2,
    l1.Country AS Country
FROM LABOURERS l1
JOIN LABOURERS l2
    ON l1.Country = l2.Country
   AND l1.ID <> l2.ID
ORDER BY
    l1.Name,
    l2.Name,
    l1.Country;

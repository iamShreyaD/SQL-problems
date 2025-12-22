Given a table TOWNS, query for all the Town Names and Population, such that the ID is a multiple of 3.

SELECT TownName, Population
from TOWNS
where ID%3 = 0;

Given the CITY and COUNTRY tables, query the sum of the populations of all cities where the CONTINENT is 'Asia'.

Note: CITY.CountryCode and COUNTRY.Code are matching key columns.

SELECT SUM(c.population)
from CITY c 
JOIN COUNTRY ct ON c.CountryCode = ct.Code
where ct.continent = 'Asia';

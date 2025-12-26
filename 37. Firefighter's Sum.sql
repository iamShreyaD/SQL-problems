Given a table FIREFIGHTERS, query the sum of all the people saved by the Firefighters whose CountryCode is PG.

select sum(PeopleSaved)
FROM FIREFIGHTERS
WHERE CountryCode = 'PG'
;

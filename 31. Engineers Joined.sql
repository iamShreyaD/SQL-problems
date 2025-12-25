Given 2 tables ENGINEER and DATA, query the sum of Count of all the engineers whose Type is FrontEnd.

Note: The column ID is the same in both the tables.

select sum(e.count) A
from ENGINEER e 
join DATA d on e.ID = d.ID
where d.Type = 'FrontEnd';

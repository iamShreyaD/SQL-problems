Given 2 tables ENGINEER and DATA, query for the total count of each Type in the ENGINEER table. Print the result in alphabetical order of the Type.

Note: The ID columns in both tables are identical.

select sum(e.Count) A
from ENGINEER e 
JOIN DATA d on e.ID = d.ID
group by d.Type;

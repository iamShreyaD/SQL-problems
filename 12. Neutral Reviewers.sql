Write a SQL Query to find the name of all reviewers who have rated their ratings with a NULL value.

select r.reviewer_name as reviewer_name
from reviewers r
join ratings rg on r.reviewer_id = rg.reviewer_id
where rg.reviewer_stars is null
order by r.reviewer_name;

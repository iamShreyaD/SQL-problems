Write a SQL Query to find the name of those movies where one or more actors acted in two or more movies.

select m.movie_title
from movies m 
join movies_cast mc on m.movie_id = mc.movie_id
join actors a on mc.actor_id = a.actor_id
where a.actor_id IN (
    select actor_id
    from movies_cast 
    group by actor_id
    having count(*) > 1
);

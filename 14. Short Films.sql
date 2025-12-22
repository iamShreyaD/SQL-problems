Write a SQL Query to find those lowest duration movies along with the year, director’s name(first and last name combined), actor’s name(first and last name combined) and his/her role in that production.

select 
    m.movie_title as movie_title, 
    m.movie_year as movie_year, 
    concat(d.director_first_name, d.director_last_name) as director_name, 
    concat(a.actor_first_name, a.actor_last_name) as actor_name, 
    mc.role as role
from directors d 
join movies_directors md on d.director_id = md.director_id
join movies m on md.movie_id = m.movie_id
join movies_cast mc on m.movie_id = mc.movie_id
join actors a on mc.actor_id = a.actor_id
where m.movie_time = (select min(movie_time) from movies)
;

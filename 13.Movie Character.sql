Write a SQL Query to find the movie_title and name of director (first and last names combined) who directed a movie that casted a role as ‘SeanMaguire’.

select concat(d.director_first_name, d.director_last_name) as director_name, m.movie_title as movie_title
from directors d
join movies_directors md on d.director_id = md.director_id
join movies m on md.movie_id = m.movie_id
join movies_cast mc on m.movie_id = mc.movie_id
where mc.role = 'SeanMaguire'
;

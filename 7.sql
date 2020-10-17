USE SAKILA;

select last_name, count(*) as count
from actor 
group by last_name
having count = 1;

select last_name, count(*) as count
from actor 
group by last_name
having count > 1;

select staff_id, count(*) as count
from rental 
group by staff_id;

-- Films by year
select release_year, count(*) as count 
from film
group by release_year;

select rating, count(*) as count 
from film
group by rating;

select rating, avg(length)
from film 
group by rating;

select rating, avg(length) as average_duration
from film 
group by rating 
having average_duration > 120;

select rating  
-- avg(length) over (partition rating, original_language_id) as average_duration
from film
group by rating;




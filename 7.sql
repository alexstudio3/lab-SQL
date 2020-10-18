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

-- List movies and add information of average duration for their rating and original language.
select title, rating,  avg(length) over ( partition by rating ) as average_length
from film;

-- Which rentals are longer than expected? (than average)
select rental_id, datediff(return_date, rental_date)
from rental
where datediff(return_date, rental_date) > (select avg(datediff(return_date, rental_date) ) from rental );







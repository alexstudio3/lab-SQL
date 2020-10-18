-- 8

select * , dense_rank() over(order by length desc) as 'Rank'
from film;

select * , dense_rank() over(partition by rating order by length desc) as 'Rank'
from film;
-- ranks film that are grouped by rating, each rating category will be ranked

-- Rank languages by the number of films (as original language)
-- no original language

-- Rank categories by the number of films
select category_id, count(film_id)
from film_category
group by category_id
order by count(film_id) desc;

-- Which actor has appeared in the most films
 select actor_id, count(film_id)
 from film_actor
 group by actor_id
 order by count(film_id) desc;

-- Most active customer - customer with most rentals
select customer_id, count(*)
from rental
group by customer_id
order by count(*) desc;

-- Most rented film
select b.film_id, count(rental_id)
from sakila.rental as a
join sakila.inventory as b
on a.inventory_id = b.inventory_id
join sakila.film as c
on c.film_id = b.film_id
group by b.film_id 
order by count(rental_id) desc


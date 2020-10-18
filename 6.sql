show variables like 'local_infile';

-- Q- what is the step to import the csv?

CREATE TABLE film_2020
(title VARCHAR(3000),
description VARCHAR(3000),
release_year INT,
language_id INT,
rental_rate decimal,
length INT,
rating VARCHAR(10),
special_features VARCHAR(3000));

SHOW FIELDS FROM film;

-- not combine 2 tables as they have different columns
insert into film (title, description, release_year, language_id, rental_rate, length, rating, special_features  ) 
select title, description, release_year, language_id, rental_rate, length, rating, special_features 
from film_2020;

select film_id, 2
from film 
where film_id between 1001 and 1681;


-- place new films in store 2 
insert into inventory (film_id, store_id)
select film_id, 2
from film 
where film_id between 1001 and 1681;

-- move old movies to store 1
update inventory 
set store_id = 1
where inventory_id between 1 and 4581;

-- update prices
update film set rental_rate = 2.99,
 replacement_cost = 8.99
where film_id between 1001 and 1681;
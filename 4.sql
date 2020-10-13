-- Queries 4
USE SAKILA;

-- film ratings
select distinct rating 
from film;

select distinct release_year 
from film;

select * 
from film 
where title LIKE '%ARMAGEDDON%';

select * 
from film 
where title LIKE '%APOLLO%';

SELECT * 
from film 
where title LIKE '%APOLLO';

SELECT * 
from film 
where title LIKE '%DATE%';


SELECT * 
from film 
where title LIKE '% DATE' or title LIKE '% DATE' or title LIKE '% DATE %' or title = 'DATE';
-- need to include if title is just date

SELECT * 
from film 
order by LENGTH(title) desc
limit 10;

SELECT * 
from film 
order by length desc
limit 10;

SELECT COUNT(*) 
from film
where special_features = 'Behind the Scenes';

SELECT * 
from film
order by release_year, title;








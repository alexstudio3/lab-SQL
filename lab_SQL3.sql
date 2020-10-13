USE sakila;

show tables;

select * from actor;

select * from address;

select title from film;

select description as FILM_DESCRIPTION from film;

select name from language;

SELECT COUNT(*) from store; 
-- 2 stores

SELECT COUNT(*) from staff; 
SELECT first_name, last_name from staff;

-- Lab 2
SELECT * from actor
where first_name = 'Scarlett';

SELECT * from actor
where last_name = 'Johansson'; 

-- Number of movies
SELECT COUNT(*) from film;

-- how many have been rented

-- shortest and longest rental period, days?
SELECT MIN(rental_duration) from film;
SELECT MAX(rental_duration) from film;

-- longest shortest and longest movie duration, minutes
SELECT MIN(length) as min_duration, MAX(length) as max_duration from film;

select avg(length) from film;
select avg(length/60 + (length % 60)/100) from film;

SELECT COUNT(*) length from film 
where length > 180;
-- 39 movies longer than 180 minutes

SELECT concat(lower(first_name),lower(last_name), email) as formatted_customer
from customer;

select title, length from film 
order by length desc
limit 1 ;
 
 -- Activity 2
SELECT COUNT(distinct last_name)  
from actor;
 
select distinct last_name 
from actor;

-- number of original languages
-- N/A

SELECT count(*) -1
from LANGUAGE; 

-- movies not originally in english - N/A
-- select language_id
-- from film

SELECT * from 
film 
where release_year = 2006
order by length desc
limit 10;

-- 
SELECT max(return_date), min(rental_date)
from rental;

SELECT DATEDIFF(max(return_date), min(rental_date))
from rental;

-- rental with adiditonal col month and weekday, 0 = monday
SELECT *, DATE_FORMAT(rental_date, '%M') as month, WEEKDAY(rental_date) as weekday
from rental
limit 20;

-- values 'weekend' and 'workday' depending on the rental day of the week.
SELECT *, 
	CASE WHEN weekday(rental_date) = '5' or weekday(rental_date) = '6' THEN 'weekend'
	ELSE 'weekday' 
    END AS day_type
from rental;

-- get last month - feb 2006 
SELECT * from rental 
where DATE_FORMAT(rental_date, '%M') = 
(SELECT DATE_FORMAT(MAX(rental_date), '%M') from rental);




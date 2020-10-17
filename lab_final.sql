-- lab 9 
use sakila;

-- address by customer
select a.customer_id as customer, a.address_id as address
from customer as a
join address as b 
on a.address_id = b.address_id;

-- total payment by customer  
select a.customer_id as customer, sum(b.amount) as total_payment_amount
from customer as a
join payment as b 
on a.customer_id = b.customer_id
group by customer;

-- total film rental by customer
select a.customer_id as customer, COUNT(b.rental_id) as total_rentals
from customer as a
join rental as b 
on a.customer_id = b.customer_id
group by customer;

-- film rented last month
select a.customer_id as customer
, COUNT(b.rental_id) as total_rentals_last_month
from customer as a
join rental as b 
on a.customer_id = b.customer_id
WHERE b.rental_date between '2005-05-15' and '2005-05-30'
group by customer
order by customer;


-- Most rented film category



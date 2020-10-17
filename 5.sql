-- LAB 5
use sakila;

ALTER table staff
DROP column PICTURE;

insert into staff (first_name, last_name, address_id, store_id, username) values ('TAMMY', 'SANDERS', 3, 1, 'tammy'); 

-- do i insert another customer?

insert into customer (first_name, last_name, store_id, address_id) values ('Mike', 'Hillyer',1, 1);


SHOW FIELDS FROM customer;

insert into rental (inventory_id, rental_date, customer_id, staff_id) values (1, NOW(), 600, 1); 

-- Q- have to fill the table? 
create table deleted_users (
customer_id smallint, email varchar(50), date date
);

-- delete non active users
SET SQL_SAFE_UPDATES = 0;

-- SET FOREIGN_KEY_CHECKS=0;
DELETE from customer where active = 0;
-- SET FOREIGN_KEY_CHECKS=1;
-- Q- how to delete on cascade

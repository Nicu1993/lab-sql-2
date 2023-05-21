use sakila;

-- 1.Select all the actors with the first name ‘Scarlett’
select first_name 
from actor 
where first_name = 'Scarlett';

-- 2. Select all the actors with the last name ‘Johansson’.
select * from sakila.actor 
where last_name = 'Johansson';

-- 3. How many films (movies) are available for rent?
select rental_id from rental;

-- 4.How many films have been rented?
select count(distinct title) 
from film
where rental_duration > 0;

-- or but here he is counting the IDs (1001)
select rental_id
from rental 
where rental_date IS NOT NULL;

-- 5. What is the shortest and longest rental period?
select min(rental_duration) 
as min_duration, max(rental_duration) 
as max_duration from film;

-- 6. What are the shortest and longest movie duration? Name the values max_duration and min_duration.
select min(length) 
as min_duration, max(length) 
as max_duration from film;

-- 7. What's the average movie duration?
select avg(lenght) 
as length from film;

-- 8. What's the average movie duration expressed in format (hours, minutes)?
select CONCAT('1', ':', AVG(length)-60) 
as  fixed_time from film;

-- 9. How many movies longer than 3 hours?
select count(*) 
as length 
from film 
where length > 180;

-- 10. Get the name and email formatted. Example: Mary SMITH - mary.smith@sakilacustomer.org.
select concat(upper(first_name), ' ', upper(last_name), ' - ', lower(email)) as email from customer;

-- 11. What´s the lenght of the longest film title?
select max(length(title)) as title from film;

select *
from actor
where first_name = "Scarlett";

select *
from actor
where last_name = "Johansson";

-- how many films are available to rent
select count(rental_id) from rental;
-- how many film have been rented
select count(rental_duration) from film;  

select max(rental_duration) from film;

select max(length) from film;
select min(length) from film;

select avg(length) as avg_value from film;
-- trasform to hours and minutes
select concat(floor(AVG(length) / 60), ' hours, ', AVG(length) % 60, ' minutes') AS average_duration FROM film;
-- how many films are longer than 3hr (>108')
select count(*) as count_long_film from film where length > 180;

select * from actor;
select concat(lower(first_name), lower(last_name), '@sakilacustomer.org') as email from actor;

select title from film 
order by length (title) desc 
limit 1;
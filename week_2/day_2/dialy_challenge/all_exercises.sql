-- Exercise 1 : Items and customers
--1. All items, ordered by price (lowest to highest).
select * 
from items 
order by product_price ASC;

--2. Items with a price above 80 (80 included), ordered by price (highest to lowest).
select * from items
where product_price > 80
order by product_price DESC;

--3. The first 3 customers in alphabetical order of the first name (A-Z) – exclude the primary key 
--column from the results.
select first_name,last_name
from customers
order by first_name ASC
limit 3;

--4. All last names (no other columns!), in reverse alphabetical order (Z-A)
SELECT last_name
FROM customers 
ORDER BY last_name DESC;

/* Exercise 2 : dvdrental database */
--1. Query to select all the columns from the “customer” table.
SELECT * FROM customer;

--2. Query to display the names (first_name, last_name) using an alias named “full_name”.
SELECT concat (first_name,' ', last_name) 
AS full_name
FROM customer;

--3. Query to select all the create_date from the “customer” table (there should be no duplicates)
SELECT DISTINCT create_date
FROM customer ;

--4. Query to get all the customer details from the customer table, it should be displayed in descending order by their first name.
SELECT *
FROM customer 
ORDER BY first_name DESC;

--5. Query to get the film ID, title, description, year of release and rental rate in ascending order according to their rental rate.
SELECT film_id, title, description, release_year, rental_rate
FROM film
ORDER BY rental_rate ASC ;

--6. Query to get the address, and the phone number of all customers living in the Texas district, 
--   these details can be found in the “address” table.
SELECT address, phone 
FROM address
WHERE district ='Texas';

--7. Query to retrieve all movie details where the movie id is either 15 or 150.
SELECT * 
FROM film 
WHERE film_id = 15 OR  film_id = 150;
SELECT * 
FROM film 
WHERE film_id IN (15, 150);

--8. query which should check if your favorite movie exists in the database. Have your query get 
--   the film ID, title, description, length and the rental rate, these details can be found in the “film” table.
SELECT film_id, title, description, length, rental_rate
FROM film 
WHERE title = 'Venom';

--9. Query to get the film ID, title, description, length and the rental rate of all the movies 
--   starting with the two first letters of your favorite movie.
SELECT film_id, title, description, length, rental_rate
FROM film 
WHERE title LIKE 'Ti%';

--10. Query which will find the 10 cheapest movies.
SELECT *
FROM film 
ORDER BY replacement_cost ASC LIMIT 10;

--11. Query which will find the next 10 cheapest movies. Try to not use LIMIT.
SELECT *
FROM film 
ORDER BY replacement_cost 
fetch first 10 rows only;

--12. Query which will join the data in the customer table and the payment table. You want to get the first name 
--    and last name from the curstomer table, as well as the amount and the date of every payment made by a customer, 
--    ordered by their id (from 1 to…).
SELECT first_name, last_name, amount, payment_date
FROM customer c
JOIN payment p ON c.customer_id = p.customer_id
ORDER BY c.customer_id;

--13. Query to get all the movies which are not in inventory.
SELECT f.title
FROM film f
LEFT JOIN inventory i ON f.film_id = i.film_id
WHERE i.film_id IS NULL; 

--14. Query to find which city is in which country.
SELECT c.city, co.country
FROM city c
JOIN country co ON c.country_id = co.country_id;

--15. query to get the customer’s id, names (first and last), the amount and the date of payment 
--    ordered by the id of the staff member who sold them the dvd.
SELECT c.customer_id, c.first_name, c.last_name, p.amount, p.payment_date
FROM customer c
JOIN payment p ON c.customer_id = p.customer_id
JOIN staff s ON p.staff_id = s.staff_id
ORDER BY s.staff_id;

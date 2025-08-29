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
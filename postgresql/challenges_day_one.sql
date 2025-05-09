-- 1. Create a list of all the distinct districts the customers are from.
SELECT DISTINCT district
FROM address
ORDER BY district;

-- 2. What is the latest rental date?
SELECT rental_date
FROM rental
ORDER BY rental_date DESC
LIMIT 1

-- 3. How many films does the company have?
SELECT COUNT(film_id)
FROM film;

-- 4. How many distinct last names of the customers are there?
SELECT DISTINCT COUNT(last_name)
FROM customer
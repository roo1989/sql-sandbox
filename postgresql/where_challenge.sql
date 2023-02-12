-- How many payments were made by the customer with customer_id = 100
SELECT COUNT(*)
FROM payment
WHERE customer_id = 100;

-- Find out the last names of customers with first name ERICA.
SELECT last_name
FROM CUSTOMER
WHERE first_name = 'ERICA';

-- How many rentals have not been returned, that is `return_date` is null.
SELECT COUNT(*)
FROM rental
WHERE return_date is null;

-- select all payment id's and amount where the amount is <= 2
SELECT payment_id, amount
FROM payment
WHERE amount <= 2;
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

-- list all payments from customer 322, 346, 354 where the amount is either less than 2 or greater than 10
-- it should be ordered by the customer first (ascending) and then as second condition order by amount in a descending order.

SELECT * FROM payment
WHERE (customer_id = 322 OR customer_id = 346 OR customer_id = 354)
AND
    (amount < 2 OR amount > 10)
ORDER BY customer_id ASC, amount DESC;

-- see how many payments have been made on January 26th and 27th 2020 with an amount between 1.99 and 3.99
SELECT COUNT(*)
FROM payment
WHERE amount BETWEEN 1.99 AND 3.99
AND payment_date BETWEEN '2020-01-26' AND '2020-01-28';

SELECT * FROM payment
WHERE customer_id IN (12,25,67,93,124,234)
AND amount IN (4.99,7.99,9.99)
AND payment_date BETWEEN '2019-12-31 23:59' AND '2020-01-01';
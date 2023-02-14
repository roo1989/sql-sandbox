SELECT * FROM payment
WHERE amount = 10.99;

SELECT * FROM customer
WHERE first_name = 'ADAM';

SELECT * FROM payment
WHERE amount = 0;

SELECT * FROM payment
WHERE amount = 10.99
OR amount = 9.99;

SELECT * FROM payment
WHERE (amount = 10.99
OR amount = 9.99)
AND customer_id = 426;

SELECT payment_id, amount
FROM payment
WHERE amount BETWEEN '2020-01-24 00:00' AND '2020-01-26 00:00';

SELECT * FROM customer
WHERE customer_id IN (123,212,323,243,353,432);

SELECT * FROM film
WHERE description LIKE '%Astounding%';

SELECT DISTINCT COUNT(*) FROM film
WHERE description LIKE '%Documentary%';

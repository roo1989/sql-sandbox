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
-- Let's use the SUM() aggregation function to sum up the amount in the payment table.
SELECT SUM(amount)
FROM payment;

-- Let's use the AVG() aggregation function to find the average amount in the payment table.
SELECT AVG(amount)
FROM payment;

-- Let's use SUM and AVG together.
SELECT
    SUM(amount),
    AVG(amount)
FROM
    payment;

-- Let's use SUM and AVG together amd then use ROUND() to round of the average number.
SELECT
    SUM(amount),
    ROUND(AVG(amount), 2)
FROM
    payment;

-- Group by.
SELECT customer_id, SUM(amount)
FROM payment
WHERE customer_id > 3
GROUP BY customer_id
ORDER BY SUM(amount) DESC;

-- Use date to select only the date from a timestamp.
SELECT DATE(payment_date)
FROM payment;

-- Use date to select only the date from a timestamp + all other columns
SELECT *,
       DATE(payment_date)
FROM payment;

-- Select a range using HAVING
SELECT
    customer_id,
    SUM(amount)
FROM payment
GROUP BY customer_id
HAVING SUM(amount) > 200;

SELECT * FROM payment
LIMIT 10;

SELECT * FROM city LIMIT 10;

SELECT *
FROM actor
LIMIT 10;







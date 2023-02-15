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
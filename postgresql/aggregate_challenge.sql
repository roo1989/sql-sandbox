/**
  Challenge 1.

  1. Find the Minimum, Maximum, Average (rounded) and the Sum oof the replacement
  cost of the films
 */

 SELECT
     MIN(replacement_cost),
     MAX(replacement_cost),
     ROUND(
         AVG(replacement_cost), 2
         ) AS average,
     SUM(replacement_cost)
FROM
    film;


/**
  Challenge 2.

    2.1. Find which of the two employees (staff_id) is responsible for more payments.
    2.2. Which of the two staff is responsible for a higher overall payment amount?
    2.3. How do these amounts change if we don't consider amounts equal to 0?
 */

-- 2.1
 SELECT
     staff_id,
     COUNT(amount)
FROM
    payment
WHERE amount != 0
GROUP BY staff_id
ORDER BY COUNT(amount) DESC;

-- 2.2
 SELECT
     staff_id,
     SUM(amount)
FROM
    payment
GROUP BY staff_id
ORDER BY SUM(amount) DESC;


/**
  Challenge 3.
 */

 -- 3.1
SELECT
    customer_id,
    DATE(payment_date),
    ROUND(AVG(amount),2) AS avg_amount,
    COUNT(*)
FROM payment
WHERE payment_date IN ('2020-04-28', '2020-04-29', '2020-04-30')
GROUP BY customer_id, DATE(payment_date)
ORDER BY 3 DESC;

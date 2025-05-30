/**
  Challenge 1.

  In the email system, there was a problem with names where
  either the first name or the last name is more than 10 characters
  long.

  1.1 Find these customers and output the list of theses first and last
  names in all lower case.
 */

 SELECT
     LOWER(first_name) AS first_name,
     LOWER(last_name) AS last_name,
     LOWER(email) AS email
FROM customer
WHERE LENGTH(first_name) > 10
OR LENGTH(last_name) > 10;

/**
  Challenge 2.

  2.1. Extract the last 5 characters of the email address first.

  2.2. Extract the . from .org postfix in the email address.
 */

-- 2.1
 SELECT
     RIGHT(email, 5)
FROM customer;

--2.2
SELECT
     LEFT(RIGHT(email, 4),1)
FROM customer;

/**
  Challenge 3.

  Anonymize the email addresses.
  Starting with the first letter of the email address, followed
  with three (3) stars (*) and then @email.com
 */

SELECT
     LEFT(email, 1) || '***' || RIGHT(email, 19)
FROM customer;

/**
  Challenge 4.

  In this challenge, you have only the amil address and the last
  name of the customers.

  You need to extract the first name from the email address and
  concatenate it with the last name. It should be in the form:
  "Last name, First name"
 */

SELECT
    last_name || ', ' || LEFT(email,POSITION('.' IN email)-1) AS name
FROM customer;

/**
  Challenge 4 - Substring.

  4.1 Create an anonymized form of the email addresses in the following way: M***.S***@sakilcustomer.org

  4.2 Create an anonymized form of the email address with the last letter of the first name,
  and the first letter of the last name followed with the @ sign and domain name.
 */

-- 4.1
SELECT
     email,
     LEFT(email,1) ||
     '***' ||
     SUBSTRING(email FROM POSITION('.' IN email) FOR 2) ||
     '***' || SUBSTRING(email FROM POSITION('@' IN email))
FROM customer;

-- 4.2
SELECT
    '***'
|| SUBSTRING(email FROM POSITION('.' IN email)-1 for 3)
|| '***'
|| SUBSTRING(email FROM POSITION('@' IN email))
FROM customer;


/**
  Challenge 5.

  5.1. What's the month with the highest total payment amount.

  5.2. What's the day of week with the highest total payment amount? (0) is sunday.

  5.3 What's the highest amount one customer has spent in a week.
 */

-- 5.1
SELECT
    EXTRACT(month from payment_date),
    SUM(amount)
FROM payment
GROUP BY EXTRACT(month from payment_date)
ORDER BY SUM(amount) DESC;


SELECT
    EXTRACT(day from payment_date),
    SUM(amount)
FROM payment
GROUP BY EXTRACT(day from payment_date)
ORDER BY SUM(amount) DESC;
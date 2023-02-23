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
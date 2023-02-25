-- Get all emails in uppercase letters
SELECT UPPER(email)
FROM customer;

-- Same query as above, but with an alias.
SELECT UPPER(email) AS email_upper
FROM customer;

-- Get all emails in lowercase letters.
SELECT LOWER(email) AS email_lower
FROM customer;

-- Get all emails in lowercase and get the length of each email.
SELECT
    LOWER(email) as email_address,
    LENGTH(email) as email_length
FROM customer;

-- Extract the first two letters from the first_name from the customers table.
SELECT
    LEFT(first_name, 2) as first_name_shortened,
    first_name
FROM customer;

-- Extract the last two letters from the last_name from the customers table.
SELECT
    RIGHT(last_name, 2) as last_name_shortened,
    last_name
FROM customer;

-- Extract the first third letter in the first_name using nested LEFT/RIGHT functions.
SELECT
    RIGHT(LEFT(first_name, 2),1),
    first_name
FROM customer;

-- Concat first letter of first_name and last_name
SELECT
    LEFT(first_name, 1) || LEFT(last_name, 1) AS abbreviation
FROM customer;

-- Concat first letter of first_name and last_name with a dot (.) inbetween
SELECT
    LEFT(first_name, 1) || '.' || LEFT(last_name, 1) || '.' AS initials
FROM customer;

-- Let's find the position of the '@' sign in the email column of the customer table.
SELECT
    POSITION('@' IN email),
    LOWER(email)
FROM customer;

-- Substring example
SELECT
    SUBSTRING(email FROM POSITION('.' IN email) FOR 3)
FROM customer;
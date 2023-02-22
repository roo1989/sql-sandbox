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
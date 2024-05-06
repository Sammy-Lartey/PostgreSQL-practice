####selectpractice

SELECT first_name, last_name, email 
FROM customer;

###selectdistinct

SELECT*
FROM film;

SELECT DISTINCT(release_year)
FROM film;

SELECT DISTINCT(rental_rate)
FROM film;

SELECT DISTINCT(rating)
FROM film;

##Countpractice

SELECT COUNT(DISTINCT(rating))
FROM film;

SELECT COUNT(DISTINCT(amount))
FROM payment;

SELECT*
FROM film
WHERE rating = 'G'

SELECT COUNT(title)
FROM film
WHERE rental_rate > 4 AND replacement_cost >= 19.99
AND rating = 'R'

SELECT title
FROM film
WHERE rental_rate > 4 AND replacement_cost >= 19.99
AND rating = 'R'

SELECT COUNT(title)
FROM film
WHERE rating = 'R' OR rating = 'PG-13'

SELECT *
FROM film
WHERE rating != 'R'

SELECT email
FROM customer
WHERE first_name = 'Nancy' AND last_name = 'Thomas'

SELECT description
FROM film
WHERE title = 'Outlaw Hanky'

SELECT phone
FROM address
WHERE address= '259 Ipoh Drive'

SELECT store_id, first_name, last_name
FROM customer
ORDER BY store_id, first_name

SELECT store_id, first_name, last_name
FROM customer
ORDER BY store_id DESC, first_name ASC

###LIMITpractice

SELECT*
FROM payment
WHERE amount != 0
ORDER BY payment_date DESC
LIMIT 5

SELECT*
FROM payment
LIMIT 1

SELECT customer_id
FROM payment
ORDER BY payment_date 
LIMIT 10

SELECT title, length
FROM film
ORDER BY length
LIMIT 5

SELECT COUNT(title)
FROM film
WHERE length <= 50

###BETWEENpractice

SELECT COUNT(*) 
FROM payment
WHERE amount BETWEEN 8 AND 9

SELECT COUNT(*) 
FROM payment
WHERE amount NOT BETWEEN 8 AND 9

SELECT *
FROM payment
WHERE payment_date BETWEEN '2007-02-01' AND '2007-02-15'


###INpractice

SELECT* 
FROM customer
WHERE first_name IN ('John','Jake','Julie')

###LIKEpractice

SELECT*
FROM customer
WHERE first_name LIKE 'A%'
ORDER BY last_name

SELECT*
FROM customer
WHERE first_name LIKE 'A%' AND last_name NOT LIKE 'B%'
ORDER BY last_name

###GENERALCHALLENGE

SELECT COUNT(*)
FROM actor
WHERE first_name LIKE 'P%'

SELECT COUNT(DISTINCT(district))
FROM address

SELECT COUNT(*)
FROM film
WHERE rating = 'R'
AND replacement_cost BETWEEN 5 AND 15

SELECT COUNT(*)
FROM film
WHERE title LIKE '%Truman%'





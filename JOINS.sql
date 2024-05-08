###JOINSpractice

#ASstatement

SELECT SUM(amount) AS net_revenue
FROM payment

SELECT COUNT(amount) AS num_transactions
FROM payment

SELECT customer_id, SUM(amount) AS total_spent
FROM payment
GROUP BY customer_id
HAVING SUM(amount) > 100

##INNERJOIN

SELECT *
FROM payment
INNER JOIN customer
ON payment.customer_id = customer.customer_id

SELECT payment_id, payment.customer_id, first_name
FROM payment
INNER JOIN customer
ON payment.customer_id = customer.customer_id

#FULLOUTERJOIN

SELECT *
FROM customer
FULL OUTER JOIN payment
ON customer.customer_id = payment.customer_id
WHERE customer.customer_id IS null
OR payment.payment_id IS null

SELECT COUNT(DISTINCT customer_id)
FROM customer

#LEFTOUTERJOIN

SELECT *
FROM inventory


SELECT film.film_id, film.title, inventory_id, store_id
FROM film
LEFT OUTER JOIN inventory 
ON inventory.film_id = film.film_id
WHERE inventory.film_id IS NULL

#CHALLENGETASKS

SELECT district, email
FROM address
INNER JOIN customer 
ON address.address_id = customer.address_id
WHERE district = 'California'

SELECT *
FROM actor

SELECT title, first_name, last_name
FROM film_actor 
INNER JOIN actor 
ON film_actor.actor_id = actor.actor_id
INNER JOIN film
ON film_actor.film_id = film.film_id
WHERE first_name = 'Nick' 
AND last_name = 'Wahlberg'
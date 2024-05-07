###AGGREGATEFUNCTIONS

SELECT MIN(replacement_cost)
FROM film

SELECT MAX(replacement_cost)
FROM film

SELECT MIN(replacement_cost), MAX(replacement_cost)
FROM film

SELECT COUNT(*)
FROM film

SELECT ROUND(AVG(replacement_cost),2)
FROM film

SELECT SUM(replacement_cost)
FROM film

SELECT *
FROM payment

SELECT customer_id, SUM(amount)
FROM payment
GROUP BY customer_id
ORDER BY SUM(amount) DESC

SELECT customer_id, COUNT(amount)
FROM payment
GROUP BY customer_id
ORDER BY COUNT(amount) DESC

SELECT customer_id, staff_id, SUM(amount)
FROM payment
GROUP BY staff_id, customer_id
ORDER BY staff_id, customer_id

SELECT customer_id, staff_id, SUM(amount)
FROM payment
GROUP BY staff_id, customer_id
ORDER BY SUM(amount)

SELECT DATE(payment_date), SUM(amount)
FROM payment
GROUP BY DATE(payment_date)
ORDER BY SUM(amount) DESC

##CHALLENGETASKS

SELECT staff_id, COUNT(amount)
FROM payment
GROUP BY staff_id

SELECT rating, ROUND(AVG(replacement_cost),2)
FROM film
GROUP BY rating 

SELECT customer_id, SUM(amount)
FROM payment
GROUP BY customer_id
ORDER BY SUM(amount) DESC
LIMIT 5

###HAVINGpractice

SELECT customer_id, SUM(amount)
FROM payment
GROUP BY customer_id
HAVING SUM(amount) > 100

SELECT store_id, COUNT(customer_id)
FROM customer
GROUP BY store_id
HAVING COUNT(customer_id) > 300

SELECT customer_id, COUNT(*)
FROM payment
GROUP BY customer_id
HAVING COUNT(*)>=40

SELECT customer_id, SUM(amount)
FROM payment
WHERE staff_id= 2
GROUP BY customer_id
HAVING SUM(amount) > 100


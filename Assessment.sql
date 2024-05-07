SELECT customer_id, staff_id, SUM(amount)
FROM payment
WHERE staff_id = 2
GROUP BY customer_id, staff_id
HAVING SUM(amount) >= 110
ORDER BY SUM(amount) DESC


SELECT COUNT(title)
FROM film
WHERE title LIKE 'J%'

SELECT *
FROM customer

SELECT MAX(customer_id), first_name, last_name
FROM customer
WHERE first_name LIKE 'E%' AND address_id < 500
GROUP BY first_name, last_name
ORDER BY MAX(customer_id) DESC
LIMIT 1


-- --  1. How many actors are there with the last name ‘Wahlberg’? -- #2 actors--
-- SELECT*
-- FROM actor
-- WHERE last_name = 'Wahlberg'       	--Answer # 2 


-- --2. How many payments were made between $3.99 and $5.99? -- 5607 payments were made--

-- SELECT COUNT (amount)
-- FROM payment 
-- WHERE amount BETWEEN 3.99 AND 5.99	-- Answer 5607 payments affected.

-- --3. What film does the store have the most of... (copies?) (search in inventory)

-- SELECT title
-- FROM film 
-- WHERE film_id	
-- IN (SELECT film_id COUNT FROM inventory GrOUP BY film_id HAVING COUNT(*)>=8); 

-- -- 4. How many customers have the last name ‘William’? -- # Zero customers 
-- SELECT*
-- FROM customer
-- WHERE last_name = 'William'          -- Answer # None


-- 5. What store employee (get the id) sold the most rentals?

-- SELECT staff_id
-- FROM rental	16044 rows affected.

-- SELECT COUNT(staff_id)
-- FROM rental
-- GROUP BY staff_id.rental =  -- 8040 rentals store 
-- --because the store #1 have  most sales Mike Higllier with an emplooyee ID 1 sold the most


-- --6. How many different district names are there? --  # 378 rows affected.-- 


-- SELECT DISTINCT district 
-- FROM public.address 				    -- Answer 378 different district names


-- 7. What film has the most actors in it? (use film_actor table and get film_id)

-- SELECT MAX (actor_id)
-- FROM film_actor


-- SELECT actor_id, film_id 
-- FROM film_actor
-- ORDER BY actor_id, film_id;

-- 8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)

-- SELECT last_name
-- FROM customer
-- WHERE last_name LIKE '%es'  			   -- Answer 21 rows 

-- SELECT store_id=1,last_name
-- FROM customer
-- WHERE last_name LIKE '%es'               -- Answer 13 customers from  store id 1

-- 9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers
-- with ids between 380 and 430? (use group by and having > 250)

-- SELECT amount
-- FROM payment          
-- WHERE customer_id BETWEEN 380 and 430
-- GROUP BY payment,amount
-- HAVING amount > 250;

-- 10. Within the film table, how many rating categories are there?  -- 5 rating categories
-- And what rating has the most movies total?						 -- PG-13 has 223 


-- SELECT DISTINCT rating 
-- FROM film								 -- Answer #5 rating categories


-- SELECT rating, COUNT(rating)
-- FROM film
-- GROUP BY rating 							 -- Answer PG-13 has 223 

-- Lab | SQL - Lab 3.01
-- Activity 1

-- 1. Drop column picture from staff.
ALTER TABLE sakila.staff
DROP COLUMN picture;

-- 2. A new person is hired to help Jon. Her name is TAMMY SANDERS, and she is a customer. Update the database accordingly.
INSERT INTO sakila.staff(staff_id, first_name, last_name, address_id, email, store_id, active, username)
VALUES 
(3, 'Tammy', 'Sanders', 79, 'TAMMY.SANDERS@sakilacustomer.org', 2, 1, 'Tammy');

-- 3. Add rental for movie "Academy Dinosaur" by Charlotte Hunter from Mike Hillyer at Store 1. You can use current date for 
--    the rental_date column in the rental table. Hint: Check the columns in the table rental and see what information you would 
--    need to add there. You can query those pieces of information. For eg., you would notice that you need customer_id 
--    information as well. To get that you can use the following query:
INSERT INTO sakila.rental(rental_id, rental_date, inventory_id, customer_id, staff_id)
VALUES 
(16050, curdate(), 4, 130, 1);

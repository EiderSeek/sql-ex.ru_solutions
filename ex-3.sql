/*Exercise: 3
Find the model number, RAM and screen size of the laptops with prices over $1000.
*/

--Solution:
SELECT model, ram, screen
FROM Laptop
WHERE price>1000;

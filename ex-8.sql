/*
Exercise: 8
Find the makers producing PCs but not laptops.
*/

--Solution:
SELECT maker FROM Product
WHERE type='PC'
EXCEPT
SELECT maker FROM Product 
WHERE type='Laptop';

/*
Exercise: 9
Find the makers of PCs with a processor speed of 450 MHz or more.
*/

--Solution:
SELECT DISTINCT maker
FROM Product
INNER JOIN PC ON Pc.model=Product.model
WHERE PC.speed>=450;

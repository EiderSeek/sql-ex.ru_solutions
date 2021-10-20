/*
Exercise: 9
Find the makers of PCs with a processor speed of 450 MHz or more.
*/

--Solution:
SELECT DISTINCT 
      maker
FROM  Product P
JOIN  PC 
ON    PC.model=P.model
WHERE PC.speed>=450;

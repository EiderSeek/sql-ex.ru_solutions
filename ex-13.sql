/*
Exercise: 13
Find out the average speed of the PCs produced by maker A.
*/

--Solution:
SELECT AVG(speed)
FROM PC
LEFT JOIN Product ON Product.model=PC.model
WHERE Product.maker='A';

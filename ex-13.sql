/*
Exercise: 13
Find out the average speed of the PCs produced by maker A.
*/

--Solution:
SELECT    AVG(speed)
FROM      PC
LEFT JOIN Product P
ON        P.model=PC.model
WHERE     P.maker='A';

/*
Exercise: 23
Get the makers producing both PCs having a speed of 750 MHz or higher and laptops with a speed of 750 MHz or higher.
*/

--Solution:
SELECT P.maker
FROM   Product P
JOIN   PC
ON     P.model=PC.model
WHERE  PC.speed>=750
INTERSECT
SELECT P.maker
FROM   Product P
JOIN   Laptop L
ON     P.model=L.model
WHERE  L.speed>=750;

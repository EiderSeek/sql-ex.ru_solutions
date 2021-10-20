/*
Exercise: 6
For each maker producing laptops with a hard drive capacity of 10 Gb or higher, find the speed of such laptops.
*/

--Solution:
SELECT DISTINCT 
            maker
           ,speed 
FROM        Laptop L
LEFT JOIN   Product P
ON          P.model=L.model
WHERE       hd>=10;

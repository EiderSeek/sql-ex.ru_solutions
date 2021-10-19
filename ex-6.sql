/*
Exercise: 6
For each maker producing laptops with a hard drive capacity of 10 Gb or higher, find the speed of such laptops.
*/

--Solution:
SELECT DISTINCT maker, speed 
FROM Laptop
LEFT JOIN Product ON Product.model=Laptop.model
WHERE hd>=10;

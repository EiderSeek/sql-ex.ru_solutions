/*
Exercise: 7
Get the models and prices for all commercially available products (of any type) produced by maker B.
*/

--Solution:
SELECT DISTINCT PC.model, PC.price
FROM PC
INNER JOIN Product ON Product.model=PC.model
WHERE Product.maker='B'
UNION
SELECT DISTINCT Laptop.model, Laptop.price
FROM Laptop
INNER JOIN Product ON Product.model=Laptop.model
WHERE Product.maker='B'
UNION
SELECT DISTINCT Printer.model, Printer.price
FROM Printer
INNER JOIN Product ON Product.model=Printer.model
WHERE Product.maker='B';


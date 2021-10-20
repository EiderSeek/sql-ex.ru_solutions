/*
Exercise: 7
Get the models and prices for all commercially available products (of any type) produced by maker B.
*/

--Solution:
SELECT DISTINCT 
        PC.model
       ,PC.price
FROM    PC
JOIN    Product P 
ON      P.model=PC.model
WHERE   P.maker='B'
UNION
SELECT DISTINCT 
        L.model
       ,L.price
FROM    Laptop L
JOIN    Product P
ON      P.model=L.model
WHERE   P.maker='B'
UNION
SELECT DISTINCT 
        D.model
       ,D.price
FROM    Printer D
JOIN    Product P 
ON      P.model=D.model
WHERE   P.maker='B';


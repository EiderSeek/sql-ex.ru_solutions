/*
Exercise: 18
Find the makers of the cheapest color printers.
*/

--Solution:
SELECT DISTINCT 
       P.maker
      ,D.price
FROM   Printer D
JOIN   Product P 
ON     D.model=P.model
WHERE  D.color='y' 
  AND  D.price=
       (
       SELECT MIN(price) 
       FROM   Printer D
       WHERE  D.color='y'
       );

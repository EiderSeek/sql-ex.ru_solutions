/*
Exercise: 18
Find the makers of the cheapest color printers.
*/

--Solution:
SELECT DISTINCT 
       product.maker
      ,printer.price
FROM   printer
INNER JOIN product 
ON printer.model=product.model
WHERE printer.color='y' 
  AND printer.price=
  (
    SELECT MIN(price) 
    FROM printer 
    WHERE printer.color='y'
   )

/*
Exercise: 10
Find the printer models having the highest price.
*/

--Solution:
SELECT DISTINCT 
       model
      ,price 
FROM   Printer
WHERE  price=
         (
          SELECT MAX(price)
          FROM   Printer
         );      

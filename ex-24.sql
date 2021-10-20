/*
Exercise: 24
List the models of any type having the highest price of all products present in the database.
*/

--Solution:
WITH  Total_CTE 
AS 
(
  SELECT model
        ,price 
  FROM   PC
  WHERE  price=
         (
         SELECT MAX(price)
         FROM   PC
         )
  UNION
  SELECT model
        ,price 
  FROM   Laptop
  WHERE  price=
         (
         SELECT MAX(price)
         FROM   Laptop
         )
  UNION
  SELECT model
        ,price
  FROM   Printer  
  WHERE  price=
         (
         SELECT MAX(price)
         FROM   Printer
         )
)
SELECT model
FROM   Total_CTE
WHERE  price=
       (
       SELECT MAX(price)
       FROM   Total_CTE
       );

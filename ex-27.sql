/*
Exercise: 27
Find out the average hard disk drive capacity of PCs produced by makers who also manufacture printers.
*/

--Solution:
SELECT PM.maker
      ,AVG(PM.hd)
FROM   (
       SELECT P.maker, PC.hd
       FROM Product P
       JOIN PC
       ON P.model=PC.model
       WHERE P.maker IN
                        (
                        SELECT maker
                        FROM Product
                        WHERE type='Printer'
                        )
       ) PM
GROUP BY PM.maker;

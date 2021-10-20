/*
Exercise: 25
Find the printer makers also producing PCs with the lowest RAM capacity and the highest processor speed of all PCs having the lowest RAM capacity.
*/

--Solution:
SELECT P.maker
FROM   Product P
WHERE  type='Printer'
INTERSECT
SELECT P.maker
FROM   Product P
JOIN   PC
ON     P.model=PC.model
WHERE  speed= 
       (
        SELECT MAX(speed)
        FROM   PC
        WHERE  ram=
               (
                SELECT MIN(ram)
                FROM   PC
               )
       )
  AND  ram=
       (
        SELECT MIN(ram)
        FROM   PC
       );


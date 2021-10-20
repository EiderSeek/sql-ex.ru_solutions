/*
Exercise: 25
Find the printer makers also producing PCs with the lowest RAM capacity and the highest processor speed of all PCs having the lowest RAM capacity.
*/

--Solution:
SELECT p.maker
FROM   product p
WHERE  type='Printer'
INTERSECT
SELECT p.maker
FROM   product p
JOIN   PC
ON     p.model=PC.model
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
  )


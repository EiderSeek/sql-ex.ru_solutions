/*
Exercise: 17
Get the laptop models that have a speed smaller than the speed of any PC.
*/

--Solution:
SELECT DISTINCT 
       a.type
      ,l.model
      ,l.speed
FROM   Product AS a
      ,Laptop  AS l
WHERE l.speed<ALL
  (
  SELECT p.speed
  FROM PC AS p
  )
  AND a.type='Laptop';

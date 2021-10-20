/*
Exercise: 17
Get the laptop models that have a speed smaller than the speed of any PC.
*/

--Solution:
SELECT DISTINCT 
       P.type
      ,L.model
      ,L.speed
FROM   Product AS P
      ,Laptop  AS L
WHERE  L.speed<ALL
       (
        SELECT speed
        FROM   PC
       )
  AND  P.type='Laptop';

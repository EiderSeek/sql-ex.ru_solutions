/*
Exercise: 16
Get pairs of PC models with identical speeds and the same RAM capacity. Each resulting pair should be displayed only once, i.e. (i, j) but not (j, i).
*/

--Solution:
SELECT DISTINCT 
      A.model
     ,B.model
     ,B.speed
     ,A.ram
FROM  PC AS A
     ,PC AS B
WHERE A.ram=B.ram 
  AND A.speed=B.speed 
  AND A.model>B.model;

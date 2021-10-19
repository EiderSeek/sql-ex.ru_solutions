/*
Exercise: 16
Get pairs of PC models with identical speeds and the same RAM capacity. Each resulting pair should be displayed only once, i.e. (i, j) but not (j, i).
*/

--Solution:
SELECT DISTINCT 
     a.model AS model1
    ,b.model AS model2
    ,a.speed
    ,a.ram
FROM PC AS a
    ,PC AS b
WHERE a.ram=b.ram 
    AND a.speed=b.speed 
    AND a.model>b.model;

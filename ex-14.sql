/*
Exercise: 14
For the ships in the Ships table that have at least 10 guns, get the class, name, and country.
*/

--Solution:
SELECT C.class
      ,S.name
      ,C.country
FROM   Classes C
JOIN   Ships S 
ON     C.class=S.class
WHERE  C.numGuns>=10;

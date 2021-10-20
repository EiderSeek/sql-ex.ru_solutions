/*
Exercise: 28
Using Product table, find out the number of makers who produce only one model.
*/

-Solution:
SELECT COUNT(TM.maker)
FROM   (
       SELECT   maker
       FROM     Product
       GROUP BY maker
       HAVING   COUNT(model)=1
       ) TM;       

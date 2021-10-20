/*
Exercise: 20
Find the makers producing at least three distinct models of PCs.
*/

--Solution:
SELECT DISTINCT
       p.maker
      ,COUNT(p.model) No_PC_Models
FROM   Product p
WHERE  p.type='PC'
GROUP BY p.maker
HAVING COUNT(p.model)>=3;

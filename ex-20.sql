/*
Exercise: 20
Find the makers producing at least three distinct models of PCs.
*/

--Solution:
SELECT      P.maker
           ,COUNT(p.model) No_PC_Models
FROM        Product P
WHERE       P.type='PC'
GROUP BY    P.maker
HAVING      COUNT(P.model)>=3;

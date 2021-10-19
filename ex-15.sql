/*
Exercise: 15
Get hard drive capacities that are identical for two or more PCs.
*/

--Solution:
SELECT PC.hd
FROM PC
GROUP BY PC.hd
HAVING COUNT(PC.hd)>=2;

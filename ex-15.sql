/*
Exercise: 15
Get hard drive capacities that are identical for two or more PCs.
*/

--Solution:
SELECT   hd
FROM     PC
GROUP BY hd
HAVING   COUNT(hd)>=2;

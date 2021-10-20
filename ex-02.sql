/*
Exercise: 2
List all printer makers.
*/

--Solution:
SELECT   p.maker 
FROM     Product p
WHERE    type='Printer'
GROUP BY maker;

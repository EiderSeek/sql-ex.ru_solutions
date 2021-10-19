/*Exercise: 2
List all printer makers.
*/

--Solution:
SELECT Product.maker 
FROM Product
WHERE type='Printer'
GROUP BY maker;

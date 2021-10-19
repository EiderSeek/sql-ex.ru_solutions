/*Exercise: 2
List all printer makers. Result set: maker.
*/

--Solution:

SELECT Product.maker 
FROM Product
WHERE type='Printer'
GROUP BY maker

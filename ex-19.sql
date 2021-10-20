/*
Exercise: 19
For each maker having models in the Laptop table, find out the average screen size of the laptops he produces.
*/

--Solution:
SELECT
       p.maker
      ,AVG(l.screen) Average_screen_size
FROM   Product p
INNER JOIN Laptop l 
ON l.model=p.model
GROUP BY p.maker;


/*
Exercise: 19
For each maker having models in the Laptop table, find out the average screen size of the laptops he produces.
*/

--Solution:
SELECT   P.maker
        ,AVG(L.screen) Average_screen_size
FROM     Product P
JOIN     Laptop L 
ON       L.model=P.model
GROUP BY P.maker;


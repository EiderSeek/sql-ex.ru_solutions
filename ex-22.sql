/*
Exercise: 22
For each value of PC speed that exceeds 600 MHz, find out the average price of PCs with identical speeds.
*/

--Solution:
SELECT   speed
        ,AVG(price) average_price
FROM     PC
WHERE    speed>600
GROUP BY speed;

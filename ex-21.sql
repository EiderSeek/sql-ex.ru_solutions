/*
Exercise: 21
Find out the maximum PC price for each maker having models in the PC table.
*/

--Solution:
SELECT      p.maker
            ,MAX(price) max_price
FROM        Product p
JOIN        PC 
ON          PC.model=p.model
GROUP BY    p.maker;

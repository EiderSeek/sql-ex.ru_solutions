/*
Exercise: 21
Find out the maximum PC price for each maker having models in the PC table.
*/

--Solution:
SELECT      P.maker
            ,MAX(price) max_price
FROM        Product P
JOIN        PC 
ON          PC.model=P.model
GROUP BY    P.maker;

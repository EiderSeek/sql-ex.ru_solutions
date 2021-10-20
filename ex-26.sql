/*
Exercise: 26
Find out the average price of PCs and laptops produced by maker A.
*/

--Solution:
SELECT  AVG(T.price)
FROM    (
        SELECT price
        FROM   PC
        JOIN   Product P
        ON     PC.model=P.model
        WHERE  P.maker='A'
        UNION ALL
        SELECT price
        FROM   Laptop L
        JOIN   Product P
        ON     L.model=P.model
        WHERE  P.maker='A'
        ) T;

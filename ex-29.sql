/*
Exercise: 29
Under the assumption that receipts of money (inc) and payouts (out) are registered not more than once a day for each collection point 
[i.e. the primary key consists of (point, date)], write a query displaying cash flow data (point, date, income, expense).
*/

--Solution:
SELECT    io.point
         ,io.date
         ,io.inc as income
         ,oo.out as expense
FROM      income_o io
LEFT JOIN outcome_o oo
ON        io.date=oo.date
AND       io.point=oo.point
UNION
SELECT    oo.point
         ,oo.date
         ,io.inc
         ,oo.out
FROM      outcome_o oo
LEFT JOIN income_o io
ON        oo.date=io.date
AND       oo.point=io.point;
--------------------------------------------------------------------------------------------------
SELECT    COALESCE(io.point, oo.point)
         ,COALESCE(io.date, oo.date)
         ,inc
         ,out
FROM      income_o io 
FULL JOIN outcome_o oo 
ON        io.point=oo.point
AND       io.date=oo.date;


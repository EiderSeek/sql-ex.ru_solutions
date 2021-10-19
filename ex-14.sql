/*
Exercise: 14
For the ships in the Ships table that have at least 10 guns, get the class, name, and country.
*/

--Solution:
SELECT Classes.class, Ships.name, Classes.country
FROM Classes
INNER JOIN Ships ON Classes.class=Ships.class
WHERE Classes.numGuns>=10;

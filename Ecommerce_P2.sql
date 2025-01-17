
SELECT Name, Color, Price
FROM Market
WHERE Year = 2020
GROUP BY Name
HAVING Price = MAX(Price);

SELECT Name, Color, Price
FROM Market
WHERE Year = 2020
GROUP BY Name
HAVING Price = MIN(Price);

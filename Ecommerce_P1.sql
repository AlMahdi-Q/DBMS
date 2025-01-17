SELECT ConsumerName, Name, count(Name) AS Number 
FROM Market 
WHERE Year = 2020
GROUP BY ConsumerName, Name;

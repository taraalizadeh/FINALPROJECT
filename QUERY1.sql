SELECT company, COUNT(company) AS most_complaints from data where != "" 
GROUP BY company
ORDER BY COUNT(company) DESC
LIMIT 10;
